const path = require('path');
const fs = require('fs');

const addressesPath = '../../addresses.json';

let addresses = require(path.join(__dirname, addressesPath));
const [targetEnv, subPath, input] = process.argv.slice(2);
let dungeonMasters = [];
if (subPath == 'DungeonMasters' && input == 'delete') {
  addresses[targetEnv][subPath] = [];
} else if (subPath == 'DungeonMasters') {
  let cleanInput = input.replace(/[^0-9a-zA-Z]/g, '');
  if (cleanInput !== '') {
    dungeonMasters = [...addresses[targetEnv][subPath], cleanInput];
    addresses[targetEnv][subPath] = dungeonMasters;
  }
} else {
  addresses[targetEnv][subPath] = input;
}

fs.writeFileSync(
  path.join(__dirname, addressesPath),
  JSON.stringify(addresses, null, 2) + '\n'
);
console.log('Updated `addresses.json`');
