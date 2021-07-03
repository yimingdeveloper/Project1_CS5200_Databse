const sqlite3 = require('sqlite3');
const { open } = require('sqlite');

async function getPlayers(query, page, pageSize) {
  console.log('myDB: getPlayers', query);

  const db = await open({
    filename: './db/football.db',
    driver: sqlite3.Database,
  });

  const stmt = await db.prepare(`
    SELECT * FROM player
    WHERE first_name LIKE @query
    ORDER BY player_id
    LIMIT @pageSize
    OFFSET @offset;
    `);

  const params = {
    '@query': query + '%',
    '@pageSize': pageSize,
    '@offset': (page - 1) * pageSize,
  };

  try {
    return await stmt.all(params);
  } finally {
    await stmt.finalize();
    db.close();
  }
}

async function getPlayerCount(query) {
  console.log('myDB: getPlayersCount', query);

  const db = await open({
    filename: './db/football.db',
    driver: sqlite3.Database,
  });

  const stmt = await db.prepare(`
    SELECT COUNT(*) AS count
    FROM player
    WHERE first_name LIKE @query;
    `);

  const params = {
    '@query': query + '%',
  };

  try {
    return (await stmt.get(params)).count;
  } finally {
    await stmt.finalize();
    db.close();
  }
}

async function getPlayerByID(player_id) {
  console.log('myDB:getPlayerByID', player_id);

  const db = await open({
    filename: './db/football.db',
    driver: sqlite3.Database,
  });

  const stmt = await db.prepare(`
    SELECT * FROM player
    WHERE player_id = @player_id;
    `);

  const params = {
    '@player_id': player_id,
  };

  try {
    return await stmt.get(params);
  } finally {
    await stmt.finalize();
    db.close();
  }
}

async function getPositionsByPlayerID(player_id) {
  console.log('myDB: getPositionsByPlayerID', player_id);

  const db = await open({
    filename: './db/football.db',
    driver: sqlite3.Database,
  });

  const stmt = await db.prepare(`
  SELECT position.name as position_name, position.position_id
  from player
  inner JOIN PlayerAndPosition
  on player.player_id=PlayerAndPosition.player_id
  INNER JOIN position
  on position.position_id=PlayerAndPosition.position_id
  WHERE player.player_id = @player_id;
  `);

  const params = {
    '@player_id': player_id,
  };

  try {
    return await stmt.all(params);
  } finally {
    await stmt.finalize();
    db.close();
  }
}

async function updatePlayerByID(player_id, player) {
  console.log('updatePlayerByID', player_id, player);

  const db = await open({
    filename: './db/football.db',
    driver: sqlite3.Database,
  });

  const stmt = await db.prepare(`
    UPDATE player
    SET
      CA = @CA,
      PA = @PA
    WHERE
       player_id = @player_id;
    `);

  const params = {
    '@player_id': player_id,
    '@CA': player.CA,
    '@PA': player.PA,
  };

  try {
    return await stmt.run(params);
  } finally {
    await stmt.finalize();
    db.close();
  }
}

async function deletePlayerByID(player_id) {
  console.log('deletePlayerByID', player_id);

  const db = await open({
    filename: './db/football.db',
    driver: sqlite3.Database,
  });

  const stmt = await db.prepare(`
    DELETE FROM player
    WHERE
       player_id = @player_id;
    `);

  const params = {
    '@player_id': player_id,
  };

  try {
    return await stmt.run(params);
  } finally {
    await stmt.finalize();
    db.close();
  }
}

async function insertReference(ref) {
  const db = await open({
    filename: './db/database.db',
    driver: sqlite3.Database,
  });

  const stmt = await db.prepare(`INSERT INTO
    Reference(title, published_on)
    VALUES (@title, @published_on);`);

  try {
    return await stmt.run({
      '@title': ref.title,
      '@published_on': ref.published_on,
    });
  } finally {
    await stmt.finalize();
    db.close();
  }
}

async function getAuthorsByReferenceID(reference_id) {
  console.log('getAuthorsByReferenceID', reference_id);

  const db = await open({
    filename: './db/database.db',
    driver: sqlite3.Database,
  });

  const stmt = await db.prepare(`
    SELECT * FROM Reference_Author
    NATURAL JOIN Author
    WHERE reference_id = @reference_id;
    `);

  const params = {
    '@reference_id': reference_id,
  };

  try {
    return await stmt.all(params);
  } finally {
    await stmt.finalize();
    db.close();
  }
}

async function addPositionIDToPlayerID(player_id, position_id) {
  console.log('addPositionIDToPlayerID', player_id, position_id);

  const db = await open({
    filename: './db/football.db',
    driver: sqlite3.Database,
  });

  const stmt = await db.prepare(`
    INSERT INTO
    PlayerAndPosition(player_id, position_id)
    VALUES (@player_id, @position_id);
    `);

  const params = {
    '@player_id': player_id,
    '@position_id': position_id,
  };

  try {
    return await stmt.run(params);
  } finally {
    await stmt.finalize();
    db.close();
  }
}

async function removePositionIDFromPlayerID(player_id, position_id) {
  console.log('removePositionIDFromPlayerID', player_id, position_id);

  const db = await open({
    filename: './db/football.db',
    driver: sqlite3.Database,
  });

  const stmt = await db.prepare(`
    DELETE FROM PlayerAndPosition
    WHERE player_id=@player_id and position_id=@position_id;
    `);

  const params = {
    '@player_id': player_id,
    '@position_id': position_id,
  };

  try {
    return await stmt.run(params);
  } finally {
    await stmt.finalize();
    db.close();
  }
}

module.exports.insertReference = insertReference;
module.exports.getPlayerByID = getPlayerByID;
module.exports.deletePlayerByID = deletePlayerByID;
module.exports.addPositionIDToPlayerID = addPositionIDToPlayerID;
module.exports.getPlayers = getPlayers;
module.exports.getPlayerCount = getPlayerCount;
module.exports.getPositionsByPlayerID = getPositionsByPlayerID;
module.exports.updatePlayerByID = updatePlayerByID;
module.exports.removePositionIDFromPlayerID = removePositionIDFromPlayerID;
