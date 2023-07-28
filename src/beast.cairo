use super::long_string::LongString;
use array::{ArrayTrait};
use core::traits::{Into};

// Tiers
const TIER_1: felt252 = '1';
const TIER_2: felt252 = '2';
const TIER_3: felt252 = '3';
const TIER_4: felt252 = '4';
const TIER_5: felt252 = '5';

// Types
const TYPE_MAGICAL: felt252 = 'Magical';
const TYPE_HUNTER: felt252 = 'Hunter';
const TYPE_BRUTE: felt252 = 'Brute';

// Magical T1s
const WARLOCK: u8 = 1;
const TYPHON: u8 = 2;
const JIANGSHI: u8 = 3;
const ANANSI: u8 = 4;
const BASILISK: u8 = 5;

// Magical T2s
const GORGON: u8 = 6;
const KITSUNE: u8 = 7;
const LICH: u8 = 8;
const CHIMERA: u8 = 9;
const WENDIGO: u8 = 10;

// Magical T3s
const RAKSHASA: u8 = 11;
const WEREWOLF: u8 = 12;
const BANSHEE: u8 = 13;
const DRAUGR: u8 = 14;
const VAMPIRE: u8 = 15;

// Magical T4s
const GOBLIN: u8 = 16;
const GHOUL: u8 = 17;
const WRAITH: u8 = 18;
const SPRITE: u8 = 19;
const KAPPA: u8 = 20;

// Magical T5s
const FAIRY: u8 = 21;
const LEPRECHAUN: u8 = 22;
const KELPIE: u8 = 23;
const PIXIE: u8 = 24;
const GNOME: u8 = 25;

// Hunter T1s
const GRIFFIN: u8 = 26;
const MANTICORE: u8 = 27;
const PHOENIX: u8 = 28;
const DRAGON: u8 = 29;
const MINOTAUR: u8 = 30;

// Hunter T2s
const QILIN: u8 = 31;
const AMMIT: u8 = 32;
const NUE: u8 = 33;
const SKINWALKER: u8 = 34;
const CHUPACABRA: u8 = 35;

// Hunter T3s
const WERETIGER: u8 = 36;
const WYVERN: u8 = 37;
const ROC: u8 = 38;
const HARPY: u8 = 39;
const PEGASUS: u8 = 40;

// Hunter T4s
const HIPPOGRIFF: u8 = 41;
const FENRIR: u8 = 42;
const JAGUAR: u8 = 43;
const SATORI: u8 = 44;
const DIREWOLF: u8 = 45;

// Hunter T5s
const BEAR: u8 = 46;
const WOLF: u8 = 47;
const MANTIS: u8 = 48;
const SPIDER: u8 = 49;
const RAT: u8 = 50;

// Brute T1s
const KRAKEN: u8 = 51;
const COLOSSUS: u8 = 52;
const BALROG: u8 = 53;
const LEVIATHAN: u8 = 54;
const TARRASQUE: u8 = 55;

// Brute T2s
const TITAN: u8 = 56;
const NEPHILIM: u8 = 57;
const BEHEMOTH: u8 = 58;
const HYDRA: u8 = 59;
const JUGGERNAUT: u8 = 60;

// Brute T3s
const ONI: u8 = 61;
const JOTUNN: u8 = 62;
const ETTIN: u8 = 63;
const CYCLOPS: u8 = 64;
const GIANT: u8 = 65;

// Brute T4s
const NEMEANLION: u8 = 66;
const BERSERKER: u8 = 67;
const YETI: u8 = 68;
const GOLEM: u8 = 69;
const ENT: u8 = 70;

// Brute T5s
const TROLL: u8 = 71;
const BIGFOOT: u8 = 72;
const OGRE: u8 = 73;
const ORC: u8 = 74;
const SKELETON: u8 = 75;

// Prefixes
const PREFIX_AGONY: u8 = 1;
const PREFIX_APOCALYPSE: u8 = 2;
const PREFIX_ARMAGEDDON: u8 = 3;
const PREFIX_BEAST: u8 = 4;
const PREFIX_BEHEMOTH: u8 = 5;
const PREFIX_BLIGHT: u8 = 6;
const PREFIX_BLOOD: u8 = 7;
const PREFIX_BRAMBLE: u8 = 8;
const PREFIX_BRIMSTONE: u8 = 9;
const PREFIX_BROOD: u8 = 10;
const PREFIX_CARRION: u8 = 11;
const PREFIX_CATACLYSM: u8 = 12;
const PREFIX_CHIMERIC: u8 = 13;
const PREFIX_CORPSE: u8 = 14;
const PREFIX_CORRUPTION: u8 = 15;
const PREFIX_DAMNATION: u8 = 16;
const PREFIX_DEATH: u8 = 17;
const PREFIX_DEMON: u8 = 18;
const PREFIX_DIRE: u8 = 19;
const PREFIX_DRAGON: u8 = 20;
const PREFIX_DREAD: u8 = 21;
const PREFIX_DOOM: u8 = 22;
const PREFIX_DUSK: u8 = 23;
const PREFIX_EAGLE: u8 = 24;
const PREFIX_EMPYREAN: u8 = 25;
const PREFIX_FATE: u8 = 26;
const PREFIX_FOE: u8 = 27;
const PREFIX_GALE: u8 = 28;
const PREFIX_GHOUL: u8 = 29;
const PREFIX_GLOOM: u8 = 30;
const PREFIX_GLYPH: u8 = 31;
const PREFIX_GOLEM: u8 = 32;
const PREFIX_GRIM: u8 = 33;
const PREFIX_HATE: u8 = 34;
const PREFIX_HAVOC: u8 = 35;
const PREFIX_HONOUR: u8 = 36;
const PREFIX_HORROR: u8 = 37;
const PREFIX_HYPNOTIC: u8 = 38;
const PREFIX_KRAKEN: u8 = 39;
const PREFIX_LOATH: u8 = 40;
const PREFIX_MAELSTROM: u8 = 41;
const PREFIX_MIND: u8 = 42;
const PREFIX_MIRACLE: u8 = 43;
const PREFIX_MORBID: u8 = 44;
const PREFIX_OBLIVION: u8 = 45;
const PREFIX_ONSLAUGHT: u8 = 46;
const PREFIX_PAIN: u8 = 47;
const PREFIX_PANDEMONIUM: u8 = 48;
const PREFIX_PHOENIX: u8 = 49;
const PREFIX_PLAGUE: u8 = 50;
const PREFIX_RAGE: u8 = 51;
const PREFIX_RAPTURE: u8 = 52;
const PREFIX_RUNE: u8 = 53;
const PREFIX_SKULL: u8 = 54;
const PREFIX_SOL: u8 = 55;
const PREFIX_SOUL: u8 = 56;
const PREFIX_SORROW: u8 = 57;
const PREFIX_SPIRIT: u8 = 58;
const PREFIX_STORM: u8 = 59;
const PREFIX_TEMPEST: u8 = 60;
const PREFIX_TORMENT: u8 = 61;
const PREFIX_VENGEANCE: u8 = 62;
const PREFIX_VICTORY: u8 = 63;
const PREFIX_VIPER: u8 = 64;
const PREFIX_VORTEX: u8 = 65;
const PREFIX_WOE: u8 = 66;
const PREFIX_WRATH: u8 = 67;
const PREFIX_LIGHTS: u8 = 68;
const PREFIX_SHIMMERING: u8 = 69;

// Suffixes
const SUFFIX_BANE: u8 = 1;
const SUFFIX_ROOT: u8 = 2;
const SUFFIX_BITE: u8 = 3;
const SUFFIX_SONG: u8 = 4;
const SUFFIX_ROAR: u8 = 5;
const SUFFIX_GRASP: u8 = 6;
const SUFFIX_INSTRUMENT: u8 = 7;
const SUFFIX_GLOW: u8 = 8;
const SUFFIX_BENDER: u8 = 9;
const SUFFIX_SHADOW: u8 = 10;
const SUFFIX_WHISPER: u8 = 11;
const SUFFIX_SHOUT: u8 = 12;
const SUFFIX_GROWL: u8 = 13;
const SUFFIX_TEAR: u8 = 14;
const SUFFIX_PEAK: u8 = 15;
const SUFFIX_FORM: u8 = 16;
const SUFFIX_SUN: u8 = 17;
const SUFFIX_MOON: u8 = 18;


fn getBeastName(beast: u8) -> felt252 {
    assert(beast >= 1 && beast <= 75, 'Invalid beast');
    if beast == WARLOCK {
        return 'Warlock';
    } else if beast == TYPHON {
        return 'Typhon';
    } else if beast == JIANGSHI {
        return 'Jiangshi';
    } else if beast == ANANSI {
        return 'Anansi';
    } else if beast == BASILISK {
        return 'Basilisk';
    } else if beast == GORGON {
        return 'Gorgon';
    } else if beast == KITSUNE {
        return 'Kitsune';
    } else if beast == LICH {
        return 'Lich';
    } else if beast == CHIMERA {
        return 'Chimera';
    } else if beast == WENDIGO {
        return 'Wendigo';
    } else if beast == RAKSHASA {
        return 'Rakshasa';
    } else if beast == WEREWOLF {
        return 'Werewolf';
    } else if beast == BANSHEE {
        return 'Banshee';
    } else if beast == DRAUGR {
        return 'Draugr';
    } else if beast == VAMPIRE {
        return 'Vampire';
    } else if beast == GOBLIN {
        return 'Goblin';
    } else if beast == GHOUL {
        return 'Ghoul';
    } else if beast == WRAITH {
        return 'Wraith';
    } else if beast == SPRITE {
        return 'Sprite';
    } else if beast == KAPPA {
        return 'Kappa';
    } else if beast == FAIRY {
        return 'Fairy';
    } else if beast == LEPRECHAUN {
        return 'Leprechaun';
    } else if beast == KELPIE {
        return 'Kelpie';
    } else if beast == PIXIE {
        return 'Pixie';
    } else if beast == GNOME {
        return 'Gnome';
    } else if beast == GRIFFIN {
        return 'Griffin';
    } else if beast == MANTICORE {
        return 'Manticore';
    } else if beast == PHOENIX {
        return 'Phoenix';
    } else if beast == DRAGON {
        return 'Dragon';
    } else if beast == MINOTAUR {
        return 'Minotaur';
    } else if beast == QILIN {
        return 'Qilin';
    } else if beast == AMMIT {
        return 'Ammit';
    } else if beast == NUE {
        return 'Nue';
    } else if beast == SKINWALKER {
        return 'Skinwalker';
    } else if beast == CHUPACABRA {
        return 'Chupacabra';
    } else if beast == WERETIGER {
        return 'Weretiger';
    } else if beast == WYVERN {
        return 'Wyvern';
    } else if beast == ROC {
        return 'Roc';
    } else if beast == HARPY {
        return 'Harpy';
    } else if beast == PEGASUS {
        return 'Pegasus';
    } else if beast == HIPPOGRIFF {
        return 'Hippogriff';
    } else if beast == FENRIR {
        return 'Fenrir';
    } else if beast == JAGUAR {
        return 'Jaguar';
    } else if beast == SATORI {
        return 'Satori';
    } else if beast == DIREWOLF {
        return 'DireWolf';
    } else if beast == BEAR {
        return 'Bear';
    } else if beast == WOLF {
        return 'Wolf';
    } else if beast == MANTIS {
        return 'Mantis';
    } else if beast == SPIDER {
        return 'Spider';
    } else if beast == RAT {
        return 'Rat';
    } else if beast == KRAKEN {
        return 'Kraken';
    } else if beast == COLOSSUS {
        return 'Colossus';
    } else if beast == BALROG {
        return 'Balrog';
    } else if beast == LEVIATHAN {
        return 'Leviathan';
    } else if beast == TARRASQUE {
        return 'Tarrasque';
    } else if beast == TITAN {
        return 'Titan';
    } else if beast == NEPHILIM {
        return 'Nephilim';
    } else if beast == BEHEMOTH {
        return 'Behemoth';
    } else if beast == HYDRA {
        return 'Hydra';
    } else if beast == JUGGERNAUT {
        return 'Juggernaut';
    } else if beast == ONI {
        return 'Oni';
    } else if beast == JOTUNN {
        return 'Jotunn';
    } else if beast == ETTIN {
        return 'Ettin';
    } else if beast == CYCLOPS {
        return 'Cyclops';
    } else if beast == GIANT {
        return 'Giant';
    } else if beast == NEMEANLION {
        return 'NemeanLion';
    } else if beast == BERSERKER {
        return 'Berserker';
    } else if beast == YETI {
        return 'Yeti';
    } else if beast == GOLEM {
        return 'Golem';
    } else if beast == ENT {
        return 'Ent';
    } else if beast == TROLL {
        return 'Troll';
    } else if beast == BIGFOOT {
        return 'Bigfoot';
    } else if beast == OGRE {
        return 'Ogre';
    } else if beast == ORC {
        return 'Orc';
    } else if beast == SKELETON {
        return 'Skeleton';
    } else {
        return '1337';
    }
}

fn getBeastNamePrefix(prefix: u8) -> felt252 {
    assert(prefix >= 1 && prefix <= 69, 'Invalid prefix');
    if prefix == PREFIX_AGONY {
        return 'Agony';
    } else if prefix == PREFIX_APOCALYPSE {
        return 'Apocalypse';
    } else if prefix == PREFIX_ARMAGEDDON {
        return 'Armageddon';
    } else if prefix == PREFIX_BEAST {
        return 'Beast';
    } else if prefix == PREFIX_BEHEMOTH {
        return 'Behemoth';
    } else if prefix == PREFIX_BLIGHT {
        return 'Blight';
    } else if prefix == PREFIX_BLOOD {
        return 'Blood';
    } else if prefix == PREFIX_BRAMBLE {
        return 'Bramble';
    } else if prefix == PREFIX_BRIMSTONE {
        return 'Brimstone';
    } else if prefix == PREFIX_BROOD {
        return 'Brood';
    } else if prefix == PREFIX_CARRION {
        return 'Carrion';
    } else if prefix == PREFIX_CATACLYSM {
        return 'Cataclysm';
    } else if prefix == PREFIX_CHIMERIC {
        return 'Chimeric';
    } else if prefix == PREFIX_CORPSE {
        return 'Corpse';
    } else if prefix == PREFIX_CORRUPTION {
        return 'Corruption';
    } else if prefix == PREFIX_DAMNATION {
        return 'Damnation';
    } else if prefix == PREFIX_DEATH {
        return 'Death';
    } else if prefix == PREFIX_DEMON {
        return 'Demon';
    } else if prefix == PREFIX_DIRE {
        return 'Dire';
    } else if prefix == PREFIX_DRAGON {
        return 'Dragon';
    } else if prefix == PREFIX_DREAD {
        return 'Dread';
    } else if prefix == PREFIX_DOOM {
        return 'Doom';
    } else if prefix == PREFIX_DUSK {
        return 'Dusk';
    } else if prefix == PREFIX_EAGLE {
        return 'Eagle';
    } else if prefix == PREFIX_EMPYREAN {
        return 'Empyrean';
    } else if prefix == PREFIX_FATE {
        return 'Fate';
    } else if prefix == PREFIX_FOE {
        return 'Foe';
    } else if prefix == PREFIX_GALE {
        return 'Gale';
    } else if prefix == PREFIX_GHOUL {
        return 'Ghoul';
    } else if prefix == PREFIX_GLOOM {
        return 'Gloom';
    } else if prefix == PREFIX_GLYPH {
        return 'Glyph';
    } else if prefix == PREFIX_GOLEM {
        return 'Golem';
    } else if prefix == PREFIX_GRIM {
        return 'Grim';
    } else if prefix == PREFIX_HATE {
        return 'Hate';
    } else if prefix == PREFIX_HAVOC {
        return 'Havoc';
    } else if prefix == PREFIX_HONOUR {
        return 'Honour';
    } else if prefix == PREFIX_HORROR {
        return 'Horror';
    } else if prefix == PREFIX_HYPNOTIC {
        return 'Hypnotic';
    } else if prefix == PREFIX_KRAKEN {
        return 'Kraken';
    } else if prefix == PREFIX_LOATH {
        return 'Loath';
    } else if prefix == PREFIX_MAELSTROM {
        return 'Maelstrom';
    } else if prefix == PREFIX_MIND {
        return 'Mind';
    } else if prefix == PREFIX_MIRACLE {
        return 'Miracle';
    } else if prefix == PREFIX_MORBID {
        return 'Morbid';
    } else if prefix == PREFIX_OBLIVION {
        return 'Oblivion';
    } else if prefix == PREFIX_ONSLAUGHT {
        return 'Onslaught';
    } else if prefix == PREFIX_PAIN {
        return 'Pain';
    } else if prefix == PREFIX_PANDEMONIUM {
        return 'Pandemonium';
    } else if prefix == PREFIX_PHOENIX {
        return 'Phoenix';
    } else if prefix == PREFIX_PLAGUE {
        return 'Plague';
    } else if prefix == PREFIX_RAGE {
        return 'Rage';
    } else if prefix == PREFIX_RAPTURE {
        return 'Rapture';
    } else if prefix == PREFIX_RUNE {
        return 'Rune';
    } else if prefix == PREFIX_SKULL {
        return 'Skull';
    } else if prefix == PREFIX_SOL {
        return 'Sol';
    } else if prefix == PREFIX_SOUL {
        return 'Soul';
    } else if prefix == PREFIX_SORROW {
        return 'Sorrow';
    } else if prefix == PREFIX_SPIRIT {
        return 'Spirit';
    } else if prefix == PREFIX_STORM {
        return 'Storm';
    } else if prefix == PREFIX_TEMPEST {
        return 'Tempest';
    } else if prefix == PREFIX_TORMENT {
        return 'Torment';
    } else if prefix == PREFIX_VENGEANCE {
        return 'Vengeance';
    } else if prefix == PREFIX_VICTORY {
        return 'Victory';
    } else if prefix == PREFIX_VIPER {
        return 'Viper';
    } else if prefix == PREFIX_VORTEX {
        return 'Vortex';
    } else if prefix == PREFIX_WOE {
        return 'Woe';
    } else if prefix == PREFIX_WRATH {
        return 'Wrath';
    } else if prefix == PREFIX_LIGHTS {
        return 'Lights';
    } else if prefix == PREFIX_SHIMMERING {
        return 'Shimmering';
    } else {
        return '1337';
    }
}

fn getBeastNameSuffix(suffix: u8) -> felt252 {
    assert(suffix >= 1 && suffix <= 18, 'Invalid suffix');
    if suffix == SUFFIX_BANE {
        return 'Bane';
    } else if suffix == SUFFIX_ROOT {
        return 'Root';
    } else if suffix == SUFFIX_BITE {
        return 'Bite';
    } else if suffix == SUFFIX_SONG {
        return 'Song';
    } else if suffix == SUFFIX_ROAR {
        return 'Roar';
    } else if suffix == SUFFIX_GRASP {
        return 'Grasp';
    } else if suffix == SUFFIX_INSTRUMENT {
        return 'Instrument';
    } else if suffix == SUFFIX_GLOW {
        return 'Glow';
    } else if suffix == SUFFIX_BENDER {
        return 'Bender';
    } else if suffix == SUFFIX_SHADOW {
        return 'Shadow';
    } else if suffix == SUFFIX_WHISPER {
        return 'Whisper';
    } else if suffix == SUFFIX_SHOUT {
        return 'Shout';
    } else if suffix == SUFFIX_GROWL {
        return 'Growl';
    } else if suffix == SUFFIX_TEAR {
        return 'Tear';
    } else if suffix == SUFFIX_PEAK {
        return 'Peak';
    } else if suffix == SUFFIX_FORM {
        return 'Form';
    } else if suffix == SUFFIX_SUN {
        return 'Sun';
    } else if suffix == SUFFIX_MOON {
        return 'Moon';
    } else {
        return '1337';
    }
}

fn getBeastTier(beast: u8) -> felt252 {
    assert(beast >= 1 && beast <= 75, 'Invalid beast');
    if ((beast >= 1 && beast <= 5)
        || (beast >= 26 && beast <= 30)
        || (beast >= 51 && beast <= 55)) {
        return TIER_1;
    } else if ((beast >= 6 && beast <= 10)
        || (beast >= 31 && beast <= 35)
        || (beast >= 56 && beast <= 60)) {
        return TIER_2;
    } else if ((beast >= 11 && beast <= 15)
        || (beast >= 36 && beast <= 40)
        || (beast >= 61 && beast <= 65)) {
        return TIER_3;
    } else if ((beast >= 16 && beast <= 20)
        || (beast >= 41 && beast <= 45)
        || (beast >= 66 && beast <= 70)) {
        return TIER_4;
    } else if ((beast >= 21 && beast <= 25)
        || (beast >= 46 && beast <= 50)
        || (beast >= 71 && beast <= 75)) {
        return TIER_5;
    } else {
        return '1337';
    }
}

fn getBeastType(beast: u8) -> felt252 {
    assert(beast >= 1 && beast <= 75, 'Invalid beast');
    if (beast >= 1 && beast <= 25) {
        return TYPE_MAGICAL;
    } else if (beast >= 26 && beast <= 50) {
        return TYPE_HUNTER;
    } else {
        return TYPE_BRUTE;
    }
}

fn getBeastPixel(beast: u8) -> LongString {
    assert(beast >= 1 && beast <= 75, 'Invalid beast');
    let mut content = ArrayTrait::<felt252>::new();
    if beast == ENT {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAMAAABEpIrGAAAAAXNSR0IArs4c6Q');
        content.append('AAABVQTFRFAAAAAAAAAP8A/4gAjAC/A');
        content.append('AD/////XlWhuwAAAAd0Uk5TAP//////');
        content.append('/6V/pvsAAADfSURBVDiNbVOBFsQgCBL');
        content.append('+/6NvpSj2bmsty5BCg9+DrwFngNOINM');
        content.append('8MoxZAtex6R4D5Xi+A5cOaRiBXKa/6q');
        content.append('NBRuxonGcjEdShT0B3qjgtB8+i/sBKB');
        content.append('vpttCmEOh4Vze5Fc8EOjEIQx3MdNIbT');
        content.append('L2XaICbIcOAgO8B7YEfqYfxDAvumUoI');
        content.append('FirxeNaouDqYhJohFrNJ4wTtL01mXRb');
        content.append('5LvOzcaK8JkzUbwCDTDtVjYujjAE+bx');
        content.append('gHNorfzZOameVV5sjxiJrbBMtWiOgtC');
        content.append('gPMJTVirYxKnNrlUJOoc8pWfrDt4eP2');
        content.append('/BBYMauZByAAAAAElFTkSuQmCC');
    } else if beast == PEGASUS {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAVRJREFUWIW9V1EWwyAI073e/8ruZ');
        content.append('04EAmG142edJRKCou2ttdEok26dgxB2');
        content.append('1dxnYJaMl9vuTxIYH+CcsKt3zJhPqLu');
        content.append('jMLhWoCsf/YwDT3yigM58Af1gmixSYp');
        content.append('EKCMjJs0WHhES45QsIRDLKcZ1ltqHsH');
        content.append('K8E8QF5hKRFmQ7xbMeBAln9UDC9WLVa');
        content.append('2t8QkEHvNpusNF2/jbaZfh8FYogvv2s');
        content.append('fmL8REW1ehmj7Ssz3aQx/70rHKDNv73');
        content.append('v19vFgF7AKoOBy9bcWqQFKkEmoiXoEG');
        content.append('XxrF58dY1kprKkSeEAuk92fxzlrAB0+');
        content.append('FRI8rjhztTtKXGkXIJs9AvX4uhUJeER');
        content.append('Y831/JCCJVMySuElgkoiU0Kfj3qQOEI');
        content.append('gCo8W3SBev5ZXgXHkeVMAz2yUPEZDrI');
        content.append('MrenjMPKBDdgOwh9+cSSDtaguzLSAbd');
        content.append('1TlAQF+3M+vm371mDj/bOHsDJrB6SwM');
        content.append('uoZ0AAAAASUVORK5CYII=');
    } else if beast == FAIRY {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAU9JREFUWIXFl92ywyAIhDHT939le');
        content.append('6VjNgssYTrl6hw18MmfdJjZtD/K1VUw');
        content.append('Z4+/DTDG2BBvYIZBCE4lYwyr7C0Y3Iv');
        content.append('kw5Sw/5W9NxA7BOyj070o5x4aX/pKAJ');
        content.append('6oN0IgFUJKQs8TuM4MZxByFUThwHPs7');
        content.append('zaAB4FrK1zLeAa+ASo3VM6dyRiV86tG');
        content.append('xGLPPMP2sFou/EgtHzUx0QNYVQ8PdCD');
        content.append('mnLcbKuVLQ3AqUCHQ5WonfLwFKFH/x3');
        content.append('OsVXtJuNZubwElBKUMhL0L5bdAkaU46');
        content.append('wULBDP+BNyXMXEi8kLBXI9n8PtzPwyB');
        content.append('MhvgIxSVJ9NLAbxbRIbXHkJkufAAiEr');
        content.append('IG1C8WSLTZwZJWDWuJCPTd65JVZDdFs');
        content.append('9VhtNdBdGr5eUCmwNbQykz4JI3W/ADw');
        content.append('BuvPLjsjCpyI8oMv7m9mfAWZAa63pAB');
        content.append('KlAVKYXgF9L+cdqVL2rQY12jxJXbAAA');
        content.append('AAElFTkSuQmCC');
    } else if beast == SATORI {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAUJJREFUWIXFl1sOxCAIRdHM/rfsf');
        content.append('ExN6ZWLiDZD0rSxFg4P0RYRafJHqdMZ');
        content.append('L+ONAE1dIiJFPb8AMwKU60KDTY0fhHk');
        content.append('CaM87DEJYMFsAaJAZ1xDsXQqgK7M8ZX');
        content.append('KwFm5frKLDmWjci0QwRT8VM49QGUsbz');
        content.append('glAVFNJgTsajqyGYJ3wRoQQmcoPQNRB');
        content.append('OfMOayDaE3SRG/M+lNRrPDi3f+9FiDg');
        content.append('wRgA9xLZsyUp6eqdtGsBrOgjDQCJpMM');
        content.append('bqY4ApswwXWS9KA2y+HVuGmSQ65NgJP');
        content.append('ePaEAurJ0atPIswosB6jhgnUgcqr+16');
        content.append('hpMblF0DFoS3Qa0sQdAzb8Ur7xJR8Fe');
        content.append('Brgt2RygWrRQAKl8J9cLUduSMF9FBl+');
        content.append('HsoxclloITQiI0B4icbDZSmIvAalocQ');
        content.append('H87ZnLop+QG2JHN9MT7wOzAkTAuIvIF');
        content.append('bsdiOX8KB4MAAAAASUVORK5CYII=');
    } else if beast == JUGGERNAUT {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAX1JREFUWIWtV1uOAzEIc6u9WO/UY');
        content.append('8yd5mi7H9uMiIvBVEWKmuYBwTiQAYDf');
        content.append('STtwfnXd7dUZyYETAPDE4+rz/ycelq7');
        content.append('rAAfOS4G7ORqPh6jW8fwN/3BtxjPFSp');
        content.append('x9bJRR2mLmxi5bq/YeOLcW535sV/EOO');
        content.append('XumOLD6a47DbDE3m6sQyDzOkLAQUMTM');
        content.append('bkHW74jdcsCNdYceo/Hq1wfgcaGkNFb');
        content.append('tuzOcCioVAmeskns1yQeKLHYk40fmZA');
        content.append('lxxWa119GxmrwFnZeZR1k27EKyFaOor');
        content.append('FNUFZ1JPZEciF5NDEzqyJI2jvw/xpNj');
        content.append('PM0RdiZU41loJiGQHIiG1RjPTwkIACU');
        content.append('CVVLKCDt9SwCBhM5jhOei4ar8WgdwxU');
        content.append('nZEw4AH7wH+AZU67tbsYUg/jqSkXMq9');
        content.append('7W5SqdRXHjtEHT1X/VVkUITPm5vIXCu');
        content.append('0kJhWvsz2R4kUbkyzLIOnHHIzYp2HXC');
        content.append('YndWG6rZsn2aMRua1e89VGud9Vyruvu');
        content.append('mqMecgSj76Ov6m/AElrVxItBiR1AAAA');
        content.append('ABJRU5ErkJggg==');
    } else if beast == ETTIN {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAIAAAD8GO2jAAAAAXNSR0IArs4c6Q');
        content.append('AAAQ1JREFUSImtVlEOxSAIE/Puf2Xez');
        content.append('2YQaAWzZjGKQFUQJ+MMHUP24YJ43YAJ');
        content.append('LDmZmGEVCgz0/aJyj0NDB/V1b+8JlLb');
        content.append('pIhLMfRhdiGmXpHH0E08dHTVoBo2BYo');
        content.append('UqDYkVig23ygkqHGgfEGK0BVxadF0rs');
        content.append('/5OSpZCHArU/BZjgiIJ71vhduwkdCTO');
        content.append('hOMh+IUJF5WxD93CK2cIl4CEdooc2jN');
        content.append('cN7mxFgPB+c0cVvI9jVNSDdNaJKAQkR');
        content.append('ODhYufzLKRTB5tE3nMIs5UVD5ElDwvn');
        content.append('LJU/nhxJsS95yE1c9l18/QTgkoJSUCe');
        content.append('zAh0rVhIWwQHXxcg/0Wxn6O4g17hvCC');
        content.append('w+Oy/6BsOsnHnIi1HRyfjDxqnkLbYqn');
        content.append('InAAAAAElFTkSuQmCC');
    } else if beast == TROLL {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAIAAAD8GO2jAAAAAXNSR0IArs4c6Q');
        content.append('AAAOBJREFUSImtVVsOgDAIG8b7Xxk/T');
        content.append('Izh0bULfk1XWhgd2qIfd38XZsZHyexh');
        content.append('Pc+uylyDkgMCL6+7820QBMomf5I8T8t');
        content.append('bfnT3GfatTIehBBiPCuyBtDwNUBClhK');
        content.append('GAIm/dGfGZJHhxbFRIxghI9pRKHHli4');
        content.append('fXKe9JFXWuZmWyhbt2dXolEAtiOJXWX');
        content.append('WT2LtKrJkH/u/O9lW8EGTbJTAlouPbJ');
        content.append('tMkDzSkIbMjp7VG1YpCAt/w/UvMfMma');
        content.append('DBCuDa+WsoaIDEz9mzTCbdCrSjAsQcD');
        content.append('JL6ObjPJ+wdy4kvy2DQBkbjAdZatI8b');
        content.append('L86ZAAAAAElFTkSuQmCC');
    } else if beast == GRIFFIN {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAUhJREFUWIXFV+0OwyAIxKUP7puzH');
        content.append('4sNZRwctklNTJuKeHd8uA0RUXlxfJ50');
        content.append('prO/Z4iI6hQZG5srEIzPRxWwh47JKXJ');
        content.append('0jLMD0Zr3G9mr/MKg670zdcZ7kT9vP8');
        content.append('RUQUcFz8TmUfRun94HhRwxWfZ2n/eRK');
        content.append('XREzFglrAqWZWYX2VBs76qAvl0UWMw9');
        content.append('wkyVSgWmx4ToPbuMVaQC2hf4yB1X4Do');
        content.append('l2AKQzS5g/7Trf1XAxDqyQ3H2PSDKpx');
        content.append('A5YohsszXkT2wIdlpxJw9Qkp7XcSZjN');
        content.append('VA4UEn682jZkAroG1MNrd8DUYJatmsi');
        content.append('JXVen+f3jE1nHdllZUkDQHV8F5BUxpm');
        content.append('TrF1nXdT5rpl1+sSGanzvZhtMdhEFYG');
        content.append('jDVuyre+GvE2aH3FGBuJa5OHunO+EAJ');
        content.append('PZD0E1KmISs/JFS1a0YTQgAxW+3AzKg');
        content.append('L39M3hhf2afRl39z47IAAAAASUVORK5');
        content.append('CYII=');
    } else if beast == KITSUNE {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAVdJREFUWIWtVsERwzAII7ku1p06R');
        content.append('nbKaOmn9FwsgXDKna+xDbLAYGpmdqnj');
        content.append('sPPWPhq7iXLYOc19ZHqKSJ67d/EXrTU');
        content.append('j0Q99RoLN2ZiugIVWDS+zY5hTBKJXzE');
        content.append('v1O4sSjMAoL3u2ooD2EEaU8u7YfUYPV');
        content.append('3AeiLF7UrFXvDOzEk/K/k5pdey2jxL1');
        content.append('So2G6jU6q2SserSIgx+R7GHpkizw8ix');
        content.append('XALMDhCrJS2rlfc9swDnrtV1dlYK7OY');
        content.append('sorDIOO2lFxL2sulwoAUTGQbrzTG5FA');
        content.append('B18KwKVQRb+SifDlh6YzruQJXLU3yvW');
        content.append('aM+9Gf9kxFbsTY21aF+fuuEI1n3/0UE');
        content.append('V3peA0pDGfbQWbXwtEpkIZHUdATpJGO');
        content.append('2RLSxDFLJ/r41SZm+nHzT7wG8zygArv');
        content.append('Y7u1IxUttG7UUdt3RGLlmFVCSjZ0F6V');
        content.append('wFIZsjUkTA+VrpnYDUdBRJWmw+QNAAM');
        content.append('BDX21h8UAAAAASUVORK5CYII=');
    } else if beast == SPRITE {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAASxJREFUWIXFVtEOAyEIw2X//8vu6');
        content.append('RJSSy3ubuvLmRyWCgiOiJjxR7wsq5m+');
        content.append('Su4E21sEzIgY6XutK7sBezYwzYRDXDf');
        content.append('BI/BEVRScqwDX+RW7zukJ95sSX8aHYa');
        content.append('WOC67zFOyK0uTkAu46ucFZX0N13ZBww');
        content.append('D+0FweqBVRhzcKw8VSORIr2GayInT5g');
        content.append('FLLXijNhJp6wzjYm1muIDjM5tlmMgLI');
        content.append('vUKeAbWTOO/8I9C0wSZZ9eKSjCOzw6D');
        content.append('D6IfoCsMAwEk34KcAOWKWAdcqvBWCOn');
        content.append('etm1oX/JGPO1RPMjK0WUIUWRbHGZIrw');
        content.append('i5CFvBLauJJ6GnZPdLCnVwN5zd4DKkr');
        content.append('HApQwtm6ifhPiSU9mAYsMQI/jy3Emc8');
        content.append('BEFOACGgRSROx51uA4jpszX/Gej+Ob8');
        content.append('AETI34pAUrRkAAAAABJRU5ErkJggg==');
    } else if beast == GOBLIN {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAUtJREFUWIXFV8sSAyEIw53+/y/bS');
        content.append('3cGswECe2guW5VHFBC7zGzbH3GNNZH2');
        content.append('cBs5gcjoNrP1+24Yd+wUaqfyAueZvJf');
        content.append('1ugRaCPxu0TgjirIJ9BzwxvDIWQiYc3');
        content.append('LWdQi8orCjVIecih4CRnXDFx1V4ZIJe');
        content.append('CLs2Nm8iP494J0afJvOvVof6EwpT+91');
        content.append('RACNROOICCH5aTlWL5hG1dQE2NGyeDM');
        content.append('5ISfqXuB3HR05I4MyIwJIJIs7yookYg');
        content.append('JY5x1i6DghwZfw6FlsLZivZEEmT8JOb');
        content.append('d9OUMd3R7OHvSeB6H5HRN2OzSfVcuYA');
        content.append('XrFZkvkxrjMEbwS9DNlaYfxAsKHrIZR');
        content.append('lP+uArBlVb8mQgNlpMDNStWUR83Z8/2');
        content.append('bzZjIRnUB1MbE3goD5e4A5Hsj2Q8CaU');
        content.append('rQmYP7XrIsgSfUQVG9+RW4cAlbv7AZk');
        content.append('ch6E+PskfIkvJBuRJE4FQjgAAAAASUV');
        content.append('ORK5CYII=');
    } else if beast == SPIDER {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAUtJREFUWIXFlksSxCAIRGFq7n9lZ');
        content.append('qVlSDcCJjUu46cfDWhUREz+OL4nm804');
        content.append('u6qmzlBpOhCJV0A+b4pn1pYBKuKqKqo');
        content.append('a7jmqgUhY5AprZjAdpRrIRL+L2EO0aq');
        content.append('ArLnIPIg2wO5iJjzpg4xEHInEzo/m/A');
        content.append('FSquyK+nk+LcF2IFnXh2Fg11MzMt032');
        content.append('Gu2A+bOnAxEEszg7P9bAFKz+I4hM9Xu');
        content.append('QiqMzBdnIV+FIIOOKiLsJs5F7cW8vcw');
        content.append('KBXIpwFwGCy+aawcE27L71qJjZuvGdP');
        content.append('kaRA2w9szyEGACIOMrdTpwVs/9+ScFt');
        content.append('ElQ6++5BECSCmPcAE/fC/rCxN9t2tyJ');
        content.append('EXXDS36X8syKsvP27dyPKvwj5H5j2oJ');
        content.append('uL2D3e/ahwEcy2DZl961w3/yHA2JBpJ');
        content.append('wYYBbB1wEOc/Cu0bsInRgbi0d9yP6L2');
        content.append('HHOvAngINPcDboFfHhnxxOIAAAAASUV');
        content.append('ORK5CYII=');
    } else if beast == GNOME {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAARBJREFUWIXVVtsOhTAIA3P+/5d3n');
        content.append('jQMYS1ostgXlwWhK5dNRWTIRhw7gz8i');
        content.append('MMY7wn1TgfP0b6jwPQX8qZ+q8D0FthL');
        content.append('I5H6SBpoACtIlobJ5FP+QQftkqpydFB');
        content.append('QYY4iqXt9srwKogA3uA4rItO4AKtAJV');
        content.append('FEiVMAGqjizaWH/vymAcpmpkP2D/E1z');
        content.append('oFtIK6DU3QZRZIwkjaRf+QsJWMNsHZH');
        content.append('w64qfiYB1xqRBVXGBEf4Oa+xrwA8cBD');
        content.append('8jMr8W6SDKBg/bBWxBTwQ82yinq3bzf');
        content.append('hgity5AklnHmSr+ECtQo5i9bOzYZkHd');
        content.append('hpUBVSXReg+sCtFf0wjUk8y3pt3LCpZ');
        content.append('F+VF6njKq8s47of0oXVW57RCEP+Hu8R');
        content.append('tg2L0sAAAAAElFTkSuQmCC');
    } else if beast == RAT {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAVRJREFUWIXFV0GSwzAIg0z//2X2s');
        content.append('u4QVYCcZFpOdWwjIbBN3czCfmjH1Y0R');
        content.append('YRH3uW8RyIDubu4uk6jWbRFAwIgYSSy');
        content.append('l3P0+AZVYBp9sOwU5kgy8fq+xmpqRwH');
        content.append('LKZESQNc+IVvvcimOIBcfmq7x263BMF');
        content.append('ciyquCV5FORfiiQwSty3VwG7vwuPwcu');
        content.append('UmSdjEWdgU/f7V+BfKavRJ/XMODKz6v');
        content.append('1tgleAbI1pxQo0V8x5b0YFZiKstuHx2');
        content.append('+bgJpzBoRFh9W/vlMCO1Fj6rpLh9nHR');
        content.append('bQ2KRcNvgOKIdE3gYktPjYTsFrQbwLK');
        content.append('KVAIsrXSVbyT96nCqznm++gmVcOayT1');
        content.append('BnmNKPNIRVVFW/cHjBHL9TO//owRY5A');
        content.append('g2qSC1ZDjOYOr/g0qF8S3ojlceMxLST');
        content.append('WqkI+o2dscV60C5jGhTqrRlJycCmS0C');
        content.append('FRCCPtFHtDWgKHCXRKvAN+wPXo5QRzN');
        content.append('JoJwAAAAASUVORK5CYII=');
    } else if beast == CYCLOPS {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAASxJREFUWIXFV8sOwzAII1P//5ezy');
        content.append('6K0FGODWo1T1IBjwiN0mNm0P8pRU1e5');
        content.append('jjcIzAKwrjuMurW2da8qdoQA8gSZIF1');
        content.append('MIiHgDRWPkA4mIeaAGlNPmNuAG8iMWS');
        content.append('Vkdve9D0EDIAsoWtfaSoHA2YO1nm5tV');
        content.append('iXhCCxAdLgCnOne8U+akYfsgOhGlBzY');
        content.append('62Irdpwv3lQ65ZYGgUXiGTnlQD+RuOD');
        content.append('wkipAJFCCVTAkAtFNoFhXdGUCC9iLeg');
        content.append('M8V1wSstj7WEaHsRf0uhdUAToA6akS6');
        content.append('zdbMTtIr6BmH6gMJLk0JqKs7arftjSf');
        content.append('Y7NrrvQbmDiURqNZBolsWwQ0oK5NsQq');
        content.append('e123kAPv22kgWzXyo9+vh+iFmdR21UJ');
        content.append('T12X9E/FYMszmrYxSX6M2I34enJ4+yf');
        content.append('AHCHXEuCnp8LgAAAABJRU5ErkJggg==');
    } else if beast == BIGFOOT {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAIAAAD8GO2jAAAAAXNSR0IArs4c6Q');
        content.append('AAAO5JREFUSInNlUsSxCAIRCH3v7Ozc');
        content.append('MoiCE37WYSFlTL46E5EpbUmIvzIhM+/');
        content.append('xY1pd+nfcBCrmBBHDgCumThykC12AdS');
        content.append('wDsICjJrUAfBeOpjdaH9S1TGrqnbG+3');
        content.append('2HS7P5/VXAyrRs0EXk6Xo36CAss9Dua');
        content.append('sxqSvdPiXZ0SyzdC3ZgF2escEdQBUp6');
        content.append('h2a7bkTxiTK6ewty0n2G6XOXZA5QN9n');
        content.append('uwwVAjdcn+veeGbG6ki58H2x0QI/6J6');
        content.append('+eTqs5Pm+cuAtHCHOjhTUoTfEdRNDLG');
        content.append('w1R+PnafZaBZ5jbmL2TmUrIzcn6nRr3');
        content.append('K93Vyzq4OP4AF6fW0LqyuFQAAAAASUV');
        content.append('ORK5CYII=');
    } else if beast == TARRASQUE {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAW5JREFUWIXFV1uOwyAMNKs9dI7QW');
        content.append('9OPypGZzNh4o02REI3jMIPxq8PMpn1x');
        content.append('/KgX8/VlAk+ROAkwsHE8Q2Ka2Zyvz/R');
        content.append('nl8UVp5J35nIFeOL4jJaIz3esdBJwMG');
        content.append('b2caxAvjLdLplhEIaRBAIjKaWD71oEF');
        content.append('GAFHsHQQhmR3x1gFQ0MqLLcZW8jV5B+');
        content.append('UIQmswoj5+OSiFwBVwaO7xxMgftY9rB');
        content.append('GLWDgKmxRhvouv1gAQy2u0Sp4UtRhMv');
        content.append('8did7yAZU7lBNSn0ACikR2/1U+UHuN4');
        content.append('48+oDy6a43zendmLExZkYoy1y2+rYEZ');
        content.append('4G6lrEikV5BlRmbynSuJ5k99oHJEFde');
        content.append('MCNtP5oEMHIGzBMP6CBY5W3kgq2ZVAc');
        content.append('v6DLOiKa1G5SNRR+kuBDqn3ylKTC4Jo');
        content.append('AN1zL7T/WAtWQioDKd6vqxkZ8SY1WhT');
        content.append('Wp0iazAQoNqz/Ge001gyXVUJKUnbSK1');
        content.append('MJ9Nl38Y0HGbvn8wdEmy2yvF/jDfxpN');
        content.append('91/a0m7AAAAABJRU5ErkJggg==');
    } else if beast == KELPIE {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAVhJREFUWIXFVtEOxCAIg8v9/y9zT');
        content.append('y7YFawuy/G0OLQFoehmFvZH+6wcIt7l');
        content.append('RwmooNkvIo7ILjNQEYoIc/fp2923SUg');
        content.append('E8OABOKIeRIbvjn1xIR/O/mVCCMbWVu');
        content.append('ZGuiADMcvkMtld8JaAchgCnxA5LsIKe');
        content.append('LcQbxnA6Fm1rwhWNcJsygDbpBwyfE66');
        content.append('Qb6CVUQ56p0rmAiwzVlkVDsuQrxvVg/');
        content.append('sOwOPdVWaJyF62tMnZ9xqIKe7U0O2dt');
        content.append('KOZRHidWSCCJy7gKW+I1KOYxw2VYt20');
        content.append('Sud0Q6jbhZg1EwV0U8igADqv2ourPRD');
        content.append('FqIuK1i4Xfve9lqaBQxIuRJGuLN8zpU');
        content.append('BljIFlFV9NRNYe1IdYCDdOqtyto4FOh');
        content.append('FAvVdSj9Gt3g3Mp9WBp4bXygSNPkjQd');
        content.append('siw9yITJEqgEhQVtHold68sqoQqMCPN');
        content.append('hKjyNytexU+sugIG/goBheCrGdi1HzR');
        content.append('GkzQeq2+uAAAAAElFTkSuQmCC');
    } else if beast == TYPHON {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('hCAYAAAC4JqlRAAABfWlDQ1BzUkdCAA');
        content.append('AokX2RPUjDQBzFX1tLRSoKZhBxyFCdW');
        content.append('hAVcdQqFKFCqBVadTC59AuaGJIUF0fB');
        content.append('teDgx2LVwcVZVwdXQRD8AHF1cVJ0kRL');
        content.append('/lxRaxHhw3I939x5374Bgo8o0q2sM0H');
        content.append('TbzKSSYi6/IkZeEUE/BIQRl5llzEpSG');
        content.append('r7j6x4Bvt4leJb/uT9Hr1qwGBAQiWeY');
        content.append('YdrE68RTm7bBeZ9YYGVZJT4njpt0QeJ');
        content.append('Hrisev3EuuRzkmYKZzcwRC8RiqYOVDm');
        content.append('ZlUyOeJI6pmk75wZzHKuctzlq1xlr35');
        content.append('C+MFvTlJa7THEYKC1iEBBEKaqigChsJ');
        content.append('WnVSLGRoP+njH3L9ErkUclXAyDGPDWi');
        content.append('QXT/4H/zu1ipOjHtJ0SQQfnGcjxEgsg');
        content.append('s0647zfew4zRMg9Axc6W3/RgOY/iS93');
        content.append('tZiR0DfNnBx3daUPeByBxh8MmRTdqUQ');
        content.append('zWCxCLyf0TflgYFboGfV6621j9MHIEt');
        content.append('dpW+Ag0NgtETZaz7v7u7s7d8zrf5+AF');
        content.append('eScpwisFufAAABh0lEQVRYhc1XUa7EI');
        content.append('AjEpofuEby1+/HWDYVhQL4eSbONIkxx');
        content.append('GF0RkXXyrNmbi55LGrZmbaxiLQA6aTf');
        content.append('xtiF/pThODIM9PRD/hwO7pJWyap+qfx');
        content.append('R7renRR1/TqQCK/RvTk/vd/kYBdaCKr');
        content.append('/VbU9bNyjYeXzJNNEQ65o/sx4E1vbMe');
        content.append('G48HZPd0++s1CJAeczqAgCA7JSECAwF');
        content.append('YIBYQA2f9dIzIbpSEgarMZ7FsTsjgrC');
        content.append('13B5y0cODj2+lEEzq9r9/Hd+BVHltuP');
        content.append('ZaV91XaQtxb74m27sFSjbHnnBAxojny');
        content.append('GNJVWI+stKdi9pZJOFtrfaAORF9glXE');
        content.append('bU74spruQWJJE3DgZR2R85bRP1t9MN5');
        content.append('heIH94GmbqeNI1KNZeuybogiggOvXsP');
        content.append('AOB4ogoDjAdRwRiAI98JFDCEHGjz9m9');
        content.append('4LIT7JyvMPrkljSe730AfXUlOapEdl7');
        content.append('YuQsJS7Yo89FXs+wyQ4UILWJVqGyRNd');
        content.append('eGUcKo5Jn8sqNZJPlvmJ2MUeBql4yHA');
        content.append('Ogmj9ZH4D7THTIdDRz0OAAAAABJRU5E');
        content.append('rkJggg==');
    } else if beast == OGRE {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAWRJREFUWIWtV0ESAyEIw53+/8v20');
        content.append('KFNs4miK5fOKEsiYKQtIno8tN5/IVpr');
        content.append('S/6vp+AI3Hu3ZHAd/Y8RYEAGdZm5ToH');
        content.append('zCdESPH0wU0cIqNMhoQTMtKd/a+1cBh');
        content.append('A0fxEIwf9KEwduARPg5lPNmGtHM8Dgl');
        content.append('f3tW6A6vKoB6LeVAe740Q2Y7S8TcMHc');
        content.append('OmdluwTcPKoEqglVHNyfEmAgBOFrxXK');
        content.append('siPDasAROSrnp3IlnvREx0AFOlduv+I');
        content.append('1IygyMgj5twturGJSB2Ykc2G4WtoSoI');
        content.append('jhV+ysBPya7poYPF1f2wKxuJ+1GYCW9');
        content.append('O8T4mws33GAxGjhcQ1Yb9XIgPGAq8FF');
        content.append('tFQk1kFglVCqnZBZJ8Bim1JNt6TFyQd');
        content.append('QEVFHJCBAiNTpVBGnFRwlS+6yvg6+ae');
        content.append('9ikEKmPq1dO+WJZbk3oXjW8ZvlhxRSI');
        content.append('+tv2JaBOUOneChGOaXVgRuKpOWGKiLh');
        content.append('4tDrdfGj4Fy3tDQ0lUDS7MbOrAAAAAE');
        content.append('lFTkSuQmCC');
    } else if beast == ANANSI {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('hCAYAAAC4JqlRAAABhGlDQ1BJQ0MgcH');
        content.append('JvZmlsZQAAKJF9kT1Iw0AcxV9bS0UqC');
        content.append('mYQcchQnVoQFXHUKhShQqgVWnUwufQL');
        content.append('mhiSFBdHwbXg4Mdi1cHFWVcHV0EQ/AB');
        content.append('xdXFSdJES/5cUWsR4cNyPd/ced++AYK');
        content.append('PKNKtrDNB028ykkmIuvyJGXhFBPwSEE');
        content.append('ZeZZcxKUhq+4+seAb7eJXiW/7k/R69a');
        content.append('sBgQEIlnmGHaxOvEU5u2wXmfWGBlWSU');
        content.append('+J46bdEHiR64rHr9xLrkc5JmCmc3MEQ');
        content.append('vEYqmDlQ5mZVMjniSOqZpO+cGcxyrnL');
        content.append('c5atcZa9+QvjBb05SWu0xxGCgtYhAQR');
        content.append('CmqooAobCVp1UixkaD/p4x9y/RK5FHJ');
        content.append('VwMgxjw1okF0/+B/87tYqTox7SdEkEH');
        content.append('5xnI8RILILNOuO833sOM0TIPQMXOlt/');
        content.append('0YDmP4kvd7WYkdA3zZwcd3WlD3gcgcY');
        content.append('fDJkU3alEM1gsQi8n9E35YGBW6Bn1eu');
        content.append('ttY/TByBLXaVvgINDYLRE2Ws+7+7u7O');
        content.append('3fM63+fgBXknKcyUKElgAAAQ9JREFUW');
        content.append('IXFV0EOwyAMC9Me3Sf01+wwsTGrJHaC');
        content.append('ukiorVqIsZ2gNjPr9sd4Zif283vfjhq');
        content.append('Iro5++s/KeNSwv6Mdv4wokQYwEmYTlw');
        content.append('EM3av6mxX1x3cJP+jJoyQKCFmCftZMh');
        content.append('yEDGMl3gkjRH8khyKCbj/ECC6DkgR0y');
        content.append('pPoAgqjGNg+wZWqqBEjzTgYoAJiE9QD');
        content.append('rj21VkJGAAuAlv8UDH6outL+lCiLKo3');
        content.append('feoBnwKsH7Lgq6CiKqZzBKeYYAlB2hL');
        content.append('5i5IQDFZLhzZm7pLIi+YSLViplgZZAY');
        content.append('yLTgiCkXwFho3o1CPfPv4AKYk0WLrfo');
        content.append('EriMBwMVHP0CKkSmlDM2INjz/cMzXVS');
        content.append('sW27J0dKbHCsQLNgcL7AwMt80AAAAAS');
        content.append('UVORK5CYII=');
    } else if beast == JIANGSHI {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAARlJREFUWIXtV1sSwyAIxE4OnSN4a');
        content.append('/NTJ0hZHmqbn+6M01QRFhBMiIjaymh1');
        content.append('bX95P7hoNSJ1o5xYj1zb6i2SafVe4zJ');
        content.append('Hzq85cK9lBMIp4MoscOVdFqWDiGg6Ah');
        content.append('95rOOvZ3ggIL2yNpYTRyFiUBI8NKVZL');
        content.append('6IGObre4QzwnPXDIuc0Jdq8NQfLkJeH');
        content.append('LCethHhpIRlP70sPEIb0BJVXFFNVYKX');
        content.append('jJwRWDEqoKZCdSzvJqGr4nHWATQIaEe');
        content.append('nx0E7BmmV4sEOB047kMuvgosK3FlLoD');
        content.append('bQ/RCCqNNIzImPqhcR62fBkJFJlKFuv');
        content.append('9387AY/ILLa8is3uSd8Fu/E4AaIvhD+');
        content.append('z9/EI/Ak8TiDUirMNJyOf+jKKtthMZ0');
        content.append('x/mu3GBeupmDA9ZhjsAAAAAElFTkSuQ');
        content.append('mCC');
    } else if beast == WEREWOLF {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAVxJREFUWIXFV1sOgzAMg2n3v3L3F');
        content.append('RFc20kL0iJNlCbEJq+y8ziOcfxRvloV');
        content.append('vE7zOOPO7IfUf7TzMBwCaCQbvCrw+d5');
        content.append('EIBNhJGJ/NUKxf3YIBEisHZDT9xAeOl');
        content.append('d59nViasCBq5QgeH0vCASAAnf7I91n0');
        content.append('PjNdJKlbhcPzkj0aiJFANuq2+NK35tv');
        content.append('JAWup53kusgzZIkA5m8QnXOMbVs3WSK');
        content.append('g3hgLEtdqQKFtTRkeQiAkqUihrww1Sz');
        content.append('EHsnMG7qZkDR6ahePYRWIvCgUBxw0fZ');
        content.append('STquVBMQgaar4oM2mshbehmfKct2fmv');
        content.append('Ay0mYQBi+Pg8vxPt7l/aMeeq+6Gh8u7');
        content.append('g7iJqoBpKaMtOPlxrpHE5VwNIEWSRUj');
        content.append('nnREwburQoYHRZE2lMQkWMgeO6lg0C7');
        content.append('s2zDQt5uwjDmKVByd4fmcWz4C3w9lfx');
        content.append('LhEmfFY8IKDOC2e/VANdZ51zX0/Yl2p');
        content.append('gX37yhIgxVEcAlwAAAABJRU5ErkJggg');
        content.append('==');
    } else if beast == LEVIATHAN {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAIAAAD8GO2jAAAAAXNSR0IArs4c6Q');
        content.append('AAARFJREFUSImlVkEOwyAMg2mP3hP66');
        content.append('/bAxJCT2IblULUQbBISl9aU3Ve7LzFC');
        content.append('7CXRnRHC17fQf8s+6DNHwN4EPa6JuUr');
        content.append('R1/E8goE+/NKtAdPqA6x4BiOhA314pI');
        content.append('mqEhJj6jBH9sIRxQ78sqtWjdBjRXVCs');
        content.append('JZKfIdMAk4ZgbMpcF6fjbQF+HFvyaGZ');
        content.append('ztBXaKEoEt3k6HCAq6X9mbb3PO28e2L');
        content.append('2uaJVChgjyBFNBXU4ttEdTwz0LBsOh1');
        content.append('AHUmQVfVpF4o/GbUr6+hn1ozQZQeqzl');
        content.append('yU5JVudpcgK8/+Fu4W0h8XdHCncpvf7');
        content.append('LqeVu0i1WgK65ojSOQ0khPfztB7nqpt');
        content.append('W9dv4AhWlqW8VwMqjjjeMfngatj27Qy');
        content.append('wUyyWIVgAAAABJRU5ErkJggg==');
    } else if beast == GORGON {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAATRJREFUWIW1V1sOwkAIROPFvJPH6');
        content.append('J16NP2RBCkzwLJOQuw+Wl4Du4qIvL0c');
        content.append('cl7mkHT2RnIXgENOtNTak+H2taSk4CX');
        content.append('PnzU7nqAcVp2364ecl/3RHBGuBCnzSn');
        content.append('QcvcfkJwU+rDqOcq3zO9IAQ+Y99GurX');
        content.append('jup5zxLz6IReX2zjzKjKvKIcmJzjp53');
        content.append('leSlEakSSzJLxH/0AhjaiHiV504aYCu');
        content.append('OvNXfrDzt/lEEsmc77nqeRgDltjtfAb');
        content.append('Ww4tXkSKYcUFTKchVhH/AKfBlGJTnBO');
        content.append('KyTFMAI+DLb5W2EZS+Hp2CdhBF2EFAk');
        content.append('OAs6StmlRDtmBloFzIhMuW/JjEMjDlS');
        content.append('5QXhSN4BdSJnBCVnrjGVHdPWo9t9sc4');
        content.append('BdSLLOidCq26nHgfSbB7qKr9wN6H/DD');
        content.append('Ci0nbY9MmAHPiTeytgXlEBhAAAAAElF');
        content.append('TkSuQmCC');
    } else if beast == SKINWALKER {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAWxJREFUWIWtV9mtAyEMHFZpLD2lD');
        content.append('HqiNPKR8GS844u8kVZBYOzBF6QBmCii');
        content.append('Y9zmXnhW1QAArqWMKbWMS2NrXNkv0QD');
        content.append('MpVQuWifyDGX2aJnWMeYynjmNJFrdZ2');
        content.append('F2jIlPLmxj78vKRfIP74Rsfp2EnUiHU');
        content.append('o8ZbgQ84SxYklpoX9dQYR1fL9ZaTleL');
        content.append('hcfa7Lndk5FkpVzWi64HPAOaqJapYHY');
        content.append('MN6vluiUbrVvflXGXXme54q17uDxFFn');
        content.append('T7/qVqrljE7v+/lutGwFOWNVTJ/j8CO');
        content.append('quzYdCGT/eHrZglYNQzqrmxlRAOSpDp');
        content.append('KJTj3ZBlgBmJfiMSbbHIus56vLB5CUv');
        content.append('nrQyjns+uWOsCSucAsMcRSfexh8zax0');
        content.append('LGPrMRvfB0vcFcnrktNdKdkBE8dblJw');
        content.append('KtxRsQyeHwZRZCKs/8novZcIsDIeI/T');
        content.append('DEICLCwdY/NA9h3IvEVfxRlSbHyC4xB');
        content.append('EOaDLM90Js/ivR8kxgSosT70BoEuLXJ');
        content.append('FOBDgAAAAASUVORK5CYII=');
    } else if beast == ORC {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAIAAAD8GO2jAAAAAXNSR0IArs4c6Q');
        content.append('AAATtJREFUSImtVkkSAyEIBGv+/2VzM');
        content.append('CEEuhGteEpYmqWRUeXkzDlFRFXtR9YG');
        content.append('+ejjmn9HbsKRFdkBomT5SlxVQQUeNxQ');
        content.append('e/IW0gsWOLYI+JvTaLLSO+bIeSeXPOW');
        content.append('GYbAb/Ll/MQXZj1Wznx5j4iSafEWTNr');
        content.append('ccUJwSz9p4MNMihr6wWQeo8ilf5Ue5Q');
        content.append('9RTVedPVt4zILo1ZDsuuGNAwGAwdIgx');
        content.append('mkdPPwuALq6l2USDWx/Bzyapfp8uBwY');
        content.append('mbn8Ly67LFrYHs3jAvcJPh1MK59Fo26');
        content.append('3jstnlB2jM6qEDKy8k2mgkz25gDv5Hy');
        content.append('qthmvQ8ghNsCna1IfA8YmUzFPs5S34M');
        content.append('iRkFyOJhkZu336Bb6jdYxMvSQRIft1r');
        content.append('uIBet80boBOg05mKILrJt1bafz1GA2Z');
        content.append('xXAN0udwVmA4kXznwAX5wXBryxTNJai');
        content.append('3QAAAABJRU5ErkJggg==');
    } else if beast == BANSHEE {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAYVJREFUWIXFltsSwjAIRBPH///l+');
        content.append('qC1dHMWsDojT5kQwma5ZY4xtvFHufWP');
        content.append('Ks4N1p+/ZbLVJqoJDlSvuq8ARBDR8Rw');
        content.append('MToH2JYRAcUTnevG+N+FsJeczN+9EgW');
        content.append('QhcfYE6Ey6JCEZOGYUnAJTUJyoAQ69L');
        content.append('ks+lx8EVEEcusDAHtOInpJLdSQ95wCb');
        content.append('LicayYkDmwMsQkBGWVVUTlfb165LmEy');
        content.append('uZP0KAkKgB6+MCrV3DQxnAb2MSm9fU0');
        content.append('PahZi1SahxrNB3Yu3y6jhzXy/odMWsP');
        content.append('BVE1K3ApQ+QkZPYM7J8cezZHBjjfJGL');
        content.append('Y3xVdOAmIwOUaUi12u3vc6whco6PveR');
        content.append('HRK92c6L6E/iJKo2oGqudD0d217onDC');
        content.append('hdkXbXah29jvrcY4r2syqpRvNTIAco2');
        content.append('TLnjhFlTatke5+CcUygqtdmLdd1VluG');
        content.append('itTNfieuY9ppWCFW551qyO5aGHBdi6q');
        content.append('CHJAuG+3HGoZRdVncU6ppIKndWaAM69');
        content.append('plEGRfh8r8iHrGXvqPuPrn+pk8AGvKx');
        content.append('yHOvsQ0AAAAAElFTkSuQmCC');
    } else if beast == ROC {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAIAAAD8GO2jAAAAAXNSR0IArs4c6Q');
        content.append('AAAMhJREFUSInNVlsOgDAI24z3vzL+G');
        content.append('h6lwBLlwyzbbAsIuNZhk9dC0MUZ+qqi');
        content.append('i1lMrk3ROwRpQPvhtrpcrCaBDU4Uroi');
        content.append('AIrZYPDoicI+VBwBC77sysQTK/Su7uu');
        content.append('PTzRDcEBpzswbqqF8777dSFKaSk+IAH');
        content.append('OQXGR7ZHKisUplkWMkQl/qdqF2G41jP');
        content.append('+ZKjTNCYoqSjOgclq7XrSHtpM6eUOFx');
        content.append('44FD6ABx4si09ahWkH3ZWO44yvw6uOi');
        content.append('BuZGD6l8qWpSHpT1o14L+1B1zYk3wE/');
        content.append('fgqAAAAAElFTkSuQmCC');
    } else if beast == BASILISK {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAIAAAD8GO2jAAAAAXNSR0IArs4c6Q');
        content.append('AAARJJREFUSIm1VkkShDAITKh5dJ7gr');
        content.append('51DLIwsDWQcyouEppEl2Jsv5/F47QPY');
        content.append('1kV4n5r5vOxdOH2HQ3vZ5ugewW2hUo9');
        content.append('PhZAJm8gJ1vGuTsNPIbZbYX1cyKnkV1');
        content.append('NS6coY6WprpZYP9rjGbqa7MBxmO/6am');
        content.append('bXIXNJ8aBkO2aai2s1vymQohA59vK52');
        content.append('isAz5ZnwJNupyZLq+seXR6lhyvfdX70');
        content.append('TttZN1YqbhwAGt2yBoBRRdXG6d1EpfH');
        content.append('3EWJvATH2Llo/W99EIh4bdhcDzaH1dL');
        content.append('LfWSTQbg60pWElcoklhp2YTG/Gt4xNO');
        content.append('RjKaafmYAzMDHjiUa597MNDvumw7grv');
        content.append('e/DMrz3meA9Vve60zRzwcr3B4S/QLQl');
        content.append('DU0fk/7DIAAAAASUVORK5CYII=');
    } else if beast == HARPY {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAUZJREFUWIXFV9ESwyAI093+/5fdk');
        content.append('1eaJRicveWl1gpEBKS9tTbaH/GqiwwY');
        content.append('4/sjBEZ49mC4k/cBMkcITMWdzKn5OPc');
        content.append('zgYi40w7j+hEUpdD4FMU5b/cbBCKJ6j');
        content.append('eOt1YUwZRGY8rwWg8hgMpYoE1l8QiUc');
        content.append('dR1XwtHgLtShhihPVmRBSy4WLhgIWpk');
        content.append('PZK6I0lD5lZU2mGsYkEH5qIOsPxWicN');
        content.append('iZ51khUKEJBBo3EOBQCW//bXFu6A1Hn');
        content.append('Q4Pn4XKPezksxkNEQlZGABhRmQreVYe');
        content.append('ICl3Xwyo4xUfhSCgJNqrAFxU1QScFyX');
        content.append('XcGO7J3IRh1w+oBH6gAzyNxf6weE37J');
        content.append('dqRsu+6bJbXogGmDGfJhpmI3RsNMpXR');
        content.append('CFSLlMKV6dv52GigwqU3B6ye8Vi5xRS');
        content.append('jO3+yTMhgQNZ+vj2qMNyQQSUnO+tvr/');
        content.append('1EF8ALASikDwxpNZAAAAAElFTkSuQmC');
        content.append('C');
    } else if beast == HIPPOGRIFF {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAVdJREFUWIXFV+0SwyAI057v/8rux');
        content.append('+pK0wSodlvudvUDIYKgq6WUXv6I7VFt');
        content.append('XbRDAk/5oBpdtu2gpYTrBJlO9BI9OZ5');
        content.append('KghHrwRyMnwkwQ97ulTE0ZPuwplE6uJ');
        content.append('ihglJF1IaCkOIh8NyoZHCX0blxCaARh');
        content.append('OfeiASMNyJyNaTCMsKQ2bEglStEw8j4');
        content.append('WcNMDtsO8pWwwhcP12Qxu1eKrSeU62+');
        content.append('SmeeOO0dvRGm5o50mIlrK/URxFk0aj8');
        content.append('qsl34eYO27qxRnsFgH1t8DLCwsM0R6+');
        content.append('oXoLpHMrpc8kInvkLOGKsgYPVcCC0Xl');
        content.append('pCN5jq4EokNoSzKbU2uE/uMMzD48LJx');
        content.append('7nxl/L+mlh/mcvelQllVLwObmsLr1FD');
        content.append('xZm6InAog7VU0ZQj32G2bBLKxirx5Ym');
        content.append('c8y7xbL3HBMPhrf+9/7a4YQYT0ct+oF');
        content.append('9RQLvLHRCVVkojl26Lx3hSPyM7wAjnG');
        content.append('YOCjZpEsAAAAASUVORK5CYII=');
    } else if beast == JAGUAR {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAXNJREFUWIXFVtFuxDAII1X//5ezh');
        content.append('6064tiGTKuGdErLpWAwkIyImPGPch3t');
        content.append('fgFqH8CMiPH3IM4y8ILcrV2n0eO+obd');
        content.append('ys+gQnyunw+gsAHTYcYyAHUDy38dF3u');
        content.append('AMMcPZGuoxxxDUvRnpOneZccFAZncKl');
        content.append('EEUR1O3XsbThq66Hyf5l/UKNOoEVd8m');
        content.append('FGJMZQRPrXtePW0grs2oco7gBnlWlLB');
        content.append('1ZgA5zVMYUpEhfVX7wvu9OVBRd7g/GV');
        content.append('I/ci1/zOBcqyhRZ/p9s7nUQBY2nNFYl');
        content.append('Q1HC+xdAajeRv4VQLdGUIr0YcQ+UKlX');
        content.append('Ixh1xKY+jln/sy5AMM/ezgEVrAaq/me');
        content.append('A1HcVdRsAdZHozPhGtIzwDwA2B9jqjL');
        content.append('K5ICLfAWRhlexEOcKgSgCq9RjfCoh6F');
        content.append('wHtcyDCc1ldVlTWUL8cRifizv/ubYpO');
        content.append('wi7XDwg3C9QNSqjXK1nWdk43BKZmgxB');
        content.append('eA9lAVXDs3MjOi6z6NkSjzHlefyEd5l');
        content.append('+VLzYqqj6KlayqAAAAAElFTkSuQmCC');
    } else if beast == JOTUNN {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAIAAAD8GO2jAAAAAXNSR0IArs4c6Q');
        content.append('AAAQ1JREFUSImtVlEWwjAIA5/3v3L90');
        content.append('cogCczK82NSIIEBndmRrPCwoMXjDGBj');
        content.append('+IlzaxPzuBd9lb9JU42nGDpWVUbNCEM');
        content.append('n/k8MZipOf6xVYq39b2O0Gkhr2XgO7v');
        content.append('XfR9xsCQDWSO30xtFzBgDnM0X0K962u');
        content.append('XjBEa/RU5R6tME8YdQMIHexamAeVMQA');
        content.append('69PpqqgRoT4qmQt2EB0iBm1rpvTbOmi');
        content.append('XIwxorOT8RtMCSMyTGN13IgPvMHxe+g');
        content.append('yLnuHrbZc2ziBSc4Ix/YzYAHXbsP2zw');
        content.append('q+XtEnq+kyhq3ten8lYMKU+iEf1ehuz');
        content.append('bcrEZ9X/BoEvmXU9C60aWvcyiwjvDEz');
        content.append('uyaPblbXgoao6mcbfJ9bMXmrpm6m8R2');
        content.append('9bAAAAAElFTkSuQmCC');
    } else if beast == NEPHILIM {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAATdJREFUWIXFVtsNwyAMvFRdLDtlD');
        content.append('HZitPSLynVtc5dS5SSkgAl+PzYAJ27E');
        content.append('c3ahob+/D+whLTuPaBFOdjX0r++GHp6');
        content.append('zawPpgoaOA/uHdhHGHUbzyxaItKxo1X');
        content.append('rQYuLTn9YSqs8tJAH+gdsFoIMQyNOOp');
        content.append('f8kQBT9g1FFm4FyQRZkDb2kLRNgPF7l');
        content.append('uKWpmUDnfpX/di/WBJ25sp8JIaehj3T');
        content.append('rEtbvFqkAVe0f54OWxQXTP2QLRIF4pQ');
        content.append('HJAniT24j3mi7JAqbHZ5nB/g/glCYiv');
        content.append('4+CzxejmTWmAkSPecZ+r2QDLYBlnjGO');
        content.append('7jCgfBgVlmweVOZEygJqVC/NgkwT5rs');
        content.append('6A2uBqOBEiGoAkwXTQuSHz6zd2qKkIL');
        content.append('VA9lik6cwylRVKF9imkzWbDGxvuH0op');
        content.append('ZuR4lvlrjyUrhbiBfCFpngkQj8MAAAA');
        content.append('AElFTkSuQmCC');
    } else if beast == DIREWOLF {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAATBJREFUWIXFV0kSwjAMsxn+/+Vwg');
        content.append('ZmgSt4CU1+gjRfZsZXUzWzZjfK4M7iZ');
        content.append('2bOlHdXK3+veA9CrQMX5stam5gDQGQP');
        content.append('hZK0IJAaw4Hciia0GkO230mUVCnw5XV');
        content.append('YG1QZr2Neb8DS4kCuAU1qKgBLftQo0Z');
        content.append('7uj/w2gkv2yeMQyH7CeVwCz2Wcegy3x');
        content.append('PpDZWRAFadJxHQBjRATiQncMYHeoslJ');
        content.append('b9BMAQ6cdm34PdHiiAGJ2GrLuH8rVnT');
        content.append('pYsA/YM7NL1s7OAnTsQo+9XwqAyooF3');
        content.append('N8pdkSbj54rAJFU5j7rB+APDgCvWCwL');
        content.append('1I2esTpbBWLm3rmd7WE2ZlnjWpUJEWY');
        content.append('UvHOVSwEo5xEXVOh7DMDh/z4BSanPAb');
        content.append('CsVQc17gTzb8O95JMGHQGoXjj/VgG15');
        content.append('0yvWIEXxy5aOIV4Bw4AAAAASUVORK5C');
        content.append('YII=');
    } else if beast == LICH {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAASFJREFUWIXNV0ESgzAIxI4f65/6D');
        content.append('P/k0+yJzooLgSStZYaZGAksm9XoIiKH');
        content.append('3GgPO7HJ/lMAqy38kudpHBmCbcV69mH');
        content.append('AJqgUZ9cVO9A32Q87x9zGbbKn16JfNF');
        content.append('ChUrse1U2JAe2UMRCt8/zCQGRWnMiAi');
        content.append('lc9aykAmBSfEgThgfXyUADYCTO9hzpB');
        content.append('NnRsGcKx1dgJACtuO7fFPUA4F21JuAV');
        content.append('eQdYJrlFnABmYpsp1nHlCojxOjnainh');
        content.append('gPdBlAMkkZmHrpPWDNqjzSjMYw7YSdV');
        content.append('DtqsUK8TwOZQsm1eQYmFMsD6KW041jO');
        content.append('Fxjoci4DvewMM9CK7WToO10WwMyhO3t');
        content.append('eDAHIvoIrviiKu4yeBa1vupl/T//JAL');
        content.append('Oo66n/BaNeFePtW/AGknimXqSXJxIAA');
        content.append('AAASUVORK5CYII=');
    } else if beast == VAMPIRE {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAUdJREFUWIXFVkEOwzAII1P//2V2W');
        content.append('VRKbXAydeNSKSVgwECGmbn9UY71Kx3e');
        content.append('8RSA6bhzoOqdWkIJXDa4euf1jHMzNbY');
        content.append('GwK5zHYSQgWclAPhlN56+Uo48HX+T/u');
        content.append('wwujrtghKguu1kB9m4B0Q4EBUjegXI1');
        content.append('MuB4GySQeThOy+O9C8bROcRBM4AyHdE');
        content.append('X3Eg/ld173piG8b0V2WIOhpvRABqpJj');
        content.append('plTTLCHGgE8YNLE0biruKSs8ToQ3ZXN');
        content.append('jRuUvBAVZP1ONV39e8WVxGmRNOznRpA');
        content.append('HQGh2n9v++BGGJXUKlqWZgDbDyj9Oub');
        content.append('dONB0g2idWtFCTKrlcj0TZgAIBzIKVo');
        content.append('sbNkgMFdQB+/1aKDBLulgH8WTzKy+jG');
        content.append('Y+6xT+lvgAqCJRStOnGtscNszctddNd');
        content.append('FTpsewgQM5KwCRG3pGwm6AXiyvzm7Vj');
        content.append('VQZu6w1N4YUx6kkKVwAAAABJRU5ErkJ');
        content.append('ggg==');
    } else if beast == NEMEANLION {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAVFJREFUWIXtVtEOAyEIw+X+/5fdy');
        content.append('y6rtRRuW7KHrclFT5EiAjoiYsYXcfsm');
        content.append('+d+AHzLAhPlhhUfj/w3yCPTAfHyn0gH');
        content.append('/g/5x3hGgvDXgVMLKK6UDxhyMvmMTYG');
        content.append('Nm7LtXBlfErGMZnkIYoVxZKN6gNhLnE');
        content.append('SgleL5DjF0hN3jGgAqycw5bNhJbB9QP');
        content.append('8nsM8CLVd2suYvUAgwmckZM+BeEF7QH');
        content.append('Mf1V4OCM6xiceew4nUZqSVJmTGUQchy');
        content.append('TvWO/kFRKPrR5QytVOXrkTBHkE3gWcf');
        content.append('lUaVlWwif065mBULfez9Q2s13FW6xVB');
        content.append('lQUKaSl2wkFtRXaxQOXiKjNU5FdZU3i');
        content.append('xZ6+6qN6IfJyr34SOHMtup2wL7G9CVp');
        content.append('AFZvc9UNQMfQTu9YPz7gHDLDz3WL96o');
        content.append('EqxatedakpbXl/FikzNu/N19UFc1XkM');
        content.append('oDLsu+h3Mkk6f+hd8zruqcKZOlY8Mk4');
        content.append('AAAAASUVORK5CYII=');
    } else if beast == DRAUGR {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('hCAYAAAC4JqlRAAABfWlDQ1BzUkdCAA');
        content.append('AokX2RPUjDQBzFX1tLRSoKZhBxyFCdW');
        content.append('hAVcdQqFKFCqBVadTC59AuaGJIUF0fB');
        content.append('teDgx2LVwcVZVwdXQRD8AHF1cVJ0kRL');
        content.append('/lxRaxHhw3I939x5374Bgo8o0q2sM0H');
        content.append('TbzKSSYi6/IkZeEUE/BIQRl5llzEpSG');
        content.append('r7j6x4Bvt4leJb/uT9Hr1qwGBAQiWeY');
        content.append('YdrE68RTm7bBeZ9YYGVZJT4njpt0QeJ');
        content.append('Hrisev3EuuRzkmYKZzcwRC8RiqYOVDm');
        content.append('ZlUyOeJI6pmk75wZzHKuctzlq1xlr35');
        content.append('C+MFvTlJa7THEYKC1iEBBEKaqigChsJ');
        content.append('WnVSLGRoP+njH3L9ErkUclXAyDGPDWi');
        content.append('QXT/4H/zu1ipOjHtJ0SQQfnGcjxEgsg');
        content.append('s0647zfew4zRMg9Axc6W3/RgOY/iS93');
        content.append('tZiR0DfNnBx3daUPeByBxh8MmRTdqUQ');
        content.append('zWCxCLyf0TflgYFboGfV6621j9MHIEt');
        content.append('dpW+Ag0NgtETZaz7v7u7s7d8zrf5+AF');
        content.append('eScpwisFufAAABKElEQVRYhcVXW44DM');
        content.append('Qgj1d7/yukXErJ42Emq9U/zYIIHJoYu');
        content.append('M9v2j/jMJio/zX4gsM1sJWsb5hFLIiF');
        content.append('GQB3PIOiefCIYtRpEBPCwFdZWsc9DS1');
        content.append('hrqjl2EBF46xDxd+fYx11kfC8nLEYgy');
        content.append('1h1VSdiRwRYINE6XSSB+EZ++IY52s3O');
        content.append('M6oDATdfsJe98S7sZQKZ885ZXJ9B1IJ');
        content.append('sPNnyaAiwB1Yh5p5vCGSHVhnLSFynIB');
        content.append('7qmj8JTrS/jkDmAHEvxw+E6I7EAwKo9');
        content.append('dW1lAgwIhIdnEdBkGKsgr72sxRkOo+3');
        content.append('4b6jF76BrA9g0vOEQKyAVvw+l2J0jmN');
        content.append('Hl5r5+xCkuOuEp2ePCCCqyig21hyBqh');
        content.append('Bl88r5k36gw70ICQQyPTCY961XBfJ/A');
        content.append('VsJdRJfR89eOWNH3K0AAAAASUVORK5C');
        content.append('YII=');
    } else if beast == BALROG {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAW5JREFUWIXFV0uuwzAInFQ5dI/gW');
        content.append('/MWT04RGQZIF0Wyktj8PBhwDgCGH9KZ');
        content.append('Ldj6vB/vZ8o7Og4EBKJQpsTPqzWl4+a');
        content.append('AMsYU7e9sTTnlyQCYrf+nevffjCfjjT');
        content.append('yBTyutDH/jCAA7bMFUbD1kEVZGnkfpu');
        content.append('tazXVSIqNHVZwuGygiJGYW+4smceGVQ');
        content.append('Mdhs5WHYJ99nhqLN9/KMMZ2YgFKsYr/');
        content.append('noz1gmHoKWr/WyQTsNIxKMoFOnCv5m/');
        content.append('NPdlMhNkENqWcDY0/4rkK04xAPT1Z8W');
        content.append('P2P756XHUzaC5SX7JnVgYo3jjN6l3kZ');
        content.append('5zoI+O9o4+KrSuyDtJKHN6J2u5Aoqop');
        content.append('Rtwre5KajSsvJOHYuMq+r1tyZr3RfIZ');
        content.append('gIqhBMN0LPQNZM1MWkuoh4+Zs9NGPZK');
        content.append('c3dSrlH+l+gdlJRmvOEpAMM5g5N0vDn');
        content.append('CADDM/Dtepyj3XCa02r3TJ/XcWYtmBn');
        content.append('zvDHt2F0vytHWDNELVLWb1AGF2h/ZD/');
        content.append('6G981/NwAAAABJRU5ErkJggg==');
    } else if beast == MANTIS {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAXtJREFUWIXFV9mOAzEIM9H+/y+zT');
        content.append('xkxLuboPixS1U447CFAUgPg+Ec5SuHu');
        content.append('cM+5xXX1W8VjG0OSAXeHmT3GZtYS6Wy');
        content.append('i/sYHkgxE5f3O3ozXlI2ZSXIA8KPAr9');
        content.append('xMsK4KqgiVBDJwBuN0xq1SNp3IItwQ+');
        content.append('RYcAM7WicH4ewMOhC6otkDpsi2Y+EVd');
        content.append('2obK4WGdgHLrXjv25/p5dYECU/pJK1b');
        content.append('rgJgDnXTdwvGy9bv2MQfYKBsmKt1qWx');
        content.append('Qpd+/bkIGmMpkrrxrI3p5JRMfqbStwl');
        content.append('sPganbHkVxJB87+q0l4iURCEXSSdpYz');
        content.append('MYr6rEW30y9KOgeUZNUfiW1Sf+VMjDI');
        content.append('S8TPx//MWxFH6TVsqWWVApXpyEiqbVR');
        content.append('GyDd+UurMgi3+mwBlAd9/rwB8C0Xgya');
        content.append('KYgk6152rC7WEQ7RWQL/iLQkeBgVfut');
        content.append('zwIFkpFjoOx5MxnbK1l25lektgQ+TkM');
        content.append('FHoNPqr+TG/vwQvbc3mwX/5g+Yru7V+');
        content.append('1TtRjrtzXg7vgFKKGDVGX90zEAAAAAS');
        content.append('UVORK5CYII=');
    } else if beast == WARLOCK {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAIAAAD8GO2jAAAAAXNSR0IArs4c6Q');
        content.append('AAASFJREFUSIm1VW2uxCAIVE/dI+yt3');
        content.append('/vBBu0wfLVZstlQhAFGxTF+IH+frc+H');
        content.append('YVc1aj1Al0+wgKeuVjugcGkfXhGJX1r');
        content.append('+KT2K0oqkp6KzW1cjst5BXdrlQ6TV35');
        content.append('ZDsYJ9BiEUaXAKUTlL01rn9dVVGfcjD');
        content.append('7hwGyBkqVX9VKekx23ZkHVmO3PQYDqO');
        content.append('aEO6OsHppMV+gsiq/ivUaVlevaM8MhU');
        content.append('RsoosMckvQN8tM7vNsR28isAyzOmie+');
        content.append('CluWE9uKUSRW9P6T0ABnawuRy26sa4t');
        content.append('uxXHtG8A0rxqcRSpYiia9ZXCbwNuKH4');
        content.append('OUp78Gb6NyhyIUKK8g7s+QH0OH2VIjo');
        content.append('qFD0aiCk0iXGqpo327kEXfaQUwQa4I/');
        content.append('Nyh1iDIvumDsYhtPIPgYPBCOPyCoAAA');
        content.append('AAASUVORK5CYII=');
    } else if beast == KRAKEN {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAASxJREFUWIXFVtEOwyAIxGUf3U/wr');
        content.append('92TCSUcHNRtJKTWqhwIV4aILPmjvJ9s');
        content.append('XvP+Pq7mOR1dk5vL9NVCPLG3NiqZlK9');
        content.append('gG/AMjesHALahUwIBaE+swf3NeuwB02');
        content.append('uhLatr3hMKjdFee4Y9T+sQkgeikkP5w');
        content.append('ErqkUWPPEJzUdTCJNTl5kVgf0c5oSMR');
        content.append('li7yPBpvz/S79yQ0TyZkHIW5AgIyoVd');
        content.append('6es4rwSoJiYi0qDgSnRcsKOrHw3ADU/');
        content.append('eOcgCqa44B6LBgBcDRHMg4wRMaQEQkT');
        content.append('yQE8C2jNAANhJXqNaQA2Ch4pMQCp7KV');
        content.append('4frGf4CrgmouVGm5VdtM50NGgjeO2C6');
        content.append('6ngxEiYhQc/JEykx4mhsggKgdQ3Nsm5');
        content.append('YC8IxnXnsGGRBuW44aUD22zWa0R89Z+');
        content.append('QCqlz2k0H53+wAAAABJRU5ErkJggg==');
    } else if beast == LEPRECHAUN {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAMNJREFUWIXtVssOwyAMc6r9/y+np');
        content.append('2g0BZaYFaQKn/q24zoBAaBYiGMl+Raw');
        content.append('BWwBAPBhX1S9jg8RmSdAVW+EtWsRvOc');
        content.append('XsBAsXgtSDkSrzmQh7UAvbEwQ6S4Avp');
        content.append('WO5IES4KscEUKFsEU0ZQ6U5CJyIX3cg');
        content.append('TJkrVGcDWLYAftwr8rIM7SAGpEhSzos');
        content.append('wAgtA+xCBBAZ8CL8sZ1HkXKg1v+tmfC');
        content.append('IgB7J9A3Jv0A74LuAdWD5jogW4Ntwio');
        content.append('Bf/c6IGVqMMvdaOAHZ92xVz90wqgAAA');
        content.append('ABJRU5ErkJggg==');
    } else if beast == CHIMERA {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAXxJREFUWIXFV8kNwzAMU4Iulp0yR');
        content.append('nbKaO2ndhWGFJ2ihwAj9aWDutwpIu7x');
        content.append('R7q5A1vs/fcay1eUuKuxxU6/nxyz064');
        content.append('hkJEYmV+hEgG0Os8/gcwBgS32PiJePv');
        content.append('9mHHQFttg78zUWCmlec/ujNMUzDbPVT');
        content.append('RlEwgl5B50ZhWclGNM1FiqIrWV3qmCO');
        content.append('eCOYcnCqu1Ww5vs0BhSp1GPrOYAzsgy');
        content.append('tIQSUFZiqjBeeBTk83yslGGMHtXLLjJ');
        content.append('Co9MLMYKQyqErfUyFiF9CfyITtYxFTP');
        content.append('AMhcb52Ue/cgEMioOBmFrJ7Dvo2nzPj');
        content.append('CmampFMeixZzB23HrqYzRg4BRfY9kAX');
        content.append('kL+5VbmhIMB69GaF1SglnnVMGDRpGgA');
        content.append('nA9Uo4Cm50WQHVM1Q7b1+l0KEZOfiZB');
        content.append('Ti/isDpQaKEIyNXFfOZig4PEidcpV0m');
        content.append('dsbJGOqGIyVYtNuy3U/PjaH3HEujtq7');
        content.append('SjN3N+10BdbFickVQ3kP3uRfLUNcb3S');
        content.append('fjd/8D2TiV4l/TA52mfrhX+5pzAAAAA');
        content.append('ElFTkSuQmCC');
    } else if beast == ONI {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAUNJREFUWIW9VtEOAjEIY8b//+X5Y');
        content.append('EwQ2gK70yZGc4elG6xsmdm2hG1mKz++');
        content.append('BMz5wIG/QuZ+5IC7V+6xkgiwA/8FEZC');
        content.append('VXgPf2SDAJ75LhE+ehRQluCqi7ikgIC');
        content.append('Y9FRGTYzGCHRGY1acExbV7QMHXcZJc4');
        content.append('6kTIuWqJOid7oMgINaeEakVMuGYG0je');
        content.append('+PHYIdH/R8cwrna7j0rqY+odEz2AxPh');
        content.append('EnWc95sNxrB2uyzk4hnH7F/ldlekbTS');
        content.append('NCIarLY8wtRvQhRKI2eN9DcQqYs6EkL');
        content.append('GZkRArVUFImxlEIiOaBhpNKejSOFTrd');
        content.append('PRvdgxJEi47HMN6kemVoCGBzoXrWEzG');
        content.append('47lQrVDvE0SwBst1q2h3tgCdnTndyJe');
        content.append('PcTgCz0kioVobsm1X5HffUpIqw2wOae');
        content.append('5ntjUmZs3V7oMcBegARst5QV3D0ncW8');
        content.append('ANrAhEO3Zl04AAAAAElFTkSuQmCC');
    } else if beast == MINOTAUR {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAXFJREFUWIWtV1EOxSAIw53cm/s+N');
        content.append('g3WomV7Jst0YikI6MzM2ulp9X4UWVx3');
        content.append('kilPx8zMWjXaSvBdaR6T4QwCrd4CfcE');
        content.append('XpRkixW5XHZVH3sG2w/F6+txEwCuKxg');
        content.append('ww+oaGMbLXbrFfyPoMHD0wWQvvgWcuY');
        content.append('tlbyQKc9+Pd3EKAKWcgCgmcCwzR8p1Z');
        content.append('wWQjyzfkzoUH+8xDH7wTC6tWqvERyGk');
        content.append('W7Lz00QuaYDYLEnLnYMt6JimT3jPJW1');
        content.append('HakW8a+zfbwgjh2vA49uWS1Xxs7DxBH');
        content.append('NQz5D2jN8GUKLsrfrb6ZYgxw8IsYHuU');
        content.append('Lasv1+fAvx5KKFNataZeNjLzXYa16Z6');
        content.append('g1HscK7GhpvRyI2LWKdYiTrfSY+Kc2X');
        content.append('MlK1VXzshE5CTS7FT7R/2PMHErL0ckt');
        content.append('NDPn74xLPbu7TLSWl3Bd+6MbseK/EKA');
        content.append('3fOj/vSH40D99ZsF4aTH781pv3r/X8+');
        content.append('IAWYZphI76dDtpzGbC2NAqY5Kep6C9w');
        content.append('fiZadqp1Ij/wAAAABJRU5ErkJggg==');
    } else if beast == WOLF {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAUlJREFUWIXFV1sOwzAIg2n3v3L2M');
        content.append('SWiLhhIOg1pWpsHdnimKiJD/iivpxWO');
        content.append('0TvPjcAYY/12wFT1Ns70qRgXzEWqut7');
        content.append('nc4WE3YekIn2LAIJ3ZCre0dGOAeYaVa');
        content.append('Xg3t4WATypBbZjHlDkzkXA818EhIrsW');
        content.append('DYfEkAS0abMv90YumTBjmSZks0/Xogy');
        content.append('QbeWCXQCi83je5lABDSJVasiyrYLbNH');
        content.append('BLOiI2wuqMkGtdTyTM503ApXaH+W695');
        content.append('xJKw0rzQnXPpKGrDBFUu0JqQWYuasll');
        content.append('5GnBHbyvNuajyqh1wWt339aBxihzo3K');
        content.append('JbATdLs3KrcQ2ZsNM6GXanhHPHIBs4J');
        content.append('3Ga2ChgSqZq8SaxNA8aIczZ4BlnsBng');
        content.append('rBrEKreP5nQRiReCE4U8bIIEjlg0VE5');
        content.append('I0bWGWLIt3bhwezB7iMfdfVgw8VZfU/');
        content.append('0318Kz6VDxmBaBCa9dO/AAAAAElFTkS');
        content.append('uQmCC');
    } else if beast == WRAITH {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAV9JREFUWIXFVUkOAyEMg2r+/2V6a');
        content.append('JEyxnYCmqq5zELimKy9tTbaH+VV0tqh');
        content.append('6HTJmSYwwrN/nwgw4OmwJg7IhNaGaIT');
        content.append('/pnUXZ8RpPPMpUM4xGuh8gC5iBOzLEk');
        content.append('CnSCw6Zf9cBID7HokElDpH21sKXIGhY');
        content.append('Jib+I6EJ5mYvr6q3W+KN1ahFTejFyGR');
        content.append('uxchOlKg5CaLM3Qs0rZ2AWsjDCcjXGn');
        content.append('ZEoHohJVohzP3jYSJ6C5g+Wdd4Nrz0T');
        content.append('ZkDpSuKlpily+jnSqPeso56OfLaIKxu');
        content.append('kBQ1gVICPTWUaxyr+ZCdXYI7EseMvbV');
        content.append('YcOqig2vFkcxGzRKXDG6iBCbj0pRORW');
        content.append('3ohm5m9vNNWpJqPWNOkQ1B2eAjoh7Tw');
        content.append('m41DgiG9HMI5Ct3oiStBwTv4xYBFh+2');
        content.append('UBik5CIX0aukpHswSJaCewYV0JewFsj');
        content.append('cNKCxYqvETglcShrEcawsS33sOy1Ifv');
        content.append('+OYEfyxvT78cTfUlsXwAAAABJRU5Erk');
        content.append('Jggg==');
    } else if beast == KAPPA {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAS9JREFUWIXFV9sWgzAIozv7/192T');
        content.append('26ICQHUszxtLYVwbV1mttkf8Up3EbUt');
        content.append('/I7/KzoclhTxu8utLSDn9+MZgne+HRQ');
        content.append('wI4xIAXkEqt4rggmhPALMe4WGrK4BpH');
        content.append('g/Eb1d1k6BrgEEZHiIvA0ZvGFVlI8Q8');
        content.append('EYvRqFHwOd/zzVae4zAjmioV8oH1IuQ');
        content.append('Vb6R9WIkNIGs5SZyAXoSdodR8wwnkCl');
        content.append('ilNm4Tkj0BpEK66AQcQSQB5lhRqQQBd');
        content.append('2Gg97+Gi9EZJaCG3EmkHncTUE8C3QfU');
        content.append('zBpuw4ZkJbfUsX4ZA4I3TgFZre2GnzE');
        content.append('mCfgXzrKw0oEsnPB1vw6ZsabNYPbkA0');
        content.append('iRSLuFQr6XIRo5iOvohyTMSDn5OuXkd');
        content.append('rryjtu/C7ofmhkHzKEBG9DREhhMEcuv');
        content.append('ObuwQc2dnk8ZocLtQAAAABJRU5ErkJg');
        content.append('gg==');
    } else if beast == COLOSSUS {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAIAAAD8GO2jAAAAAXNSR0IArs4c6Q');
        content.append('AAAS1JREFUSImtVlsSxCAIQ6eH9gje2');
        content.append('v2w41IeAbbLR6fVEBEDlci3NcFk1vp7');
        content.append('9o1c03ZpL9mJqA1a834WzIsIRFPYwXF');
        content.append('owyAieoyfKTEYL6ApHp7PtU32Ndkhhw');
        content.append('lpw2bx3PdI5x9vdGkm7V6Ab9BbYwPMW');
        content.append('S0hTtjPR7iGecg6+5pQTmcEqmHlJAuo');
        content.append('5gJgboFMsToPBqgrxc67jdhKLG7A7in');
        content.append('v9hxfTK2SD5q/mDL19IPM61wnGydRZn');
        content.append('6MMxMTPHAvNND1BFUQNYjLLAKAR+x81');
        content.append('iTVqeN2nbeqljX+x2rYVirsv1l4eETU');
        content.append('cH/mXLgyCvnRB+X9BjJU8l4E+ntYVma');
        content.append('b6gKBq1+XmBargF34MqL/XHzQu2zZ41');
        content.append('4IGTMb1H65gE/SAv1oLeepMx2p/9LTK');
        content.append('8gPlrMBMRnvjvkAAAAASUVORK5CYII=');
    } else if beast == HYDRA {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAZZJREFUWIXFV1uOw0AIc1d7sdwpx');
        content.append('8idcrTuFyPi2EDUSotUZcLADE+TvgC8');
        content.append('8Y/080T4wIkD5+X9G/TOvwOnXGdeJ1P');
        content.append('x+WcjcODEjs3ycjRUJHZs5X5QmwJWjv');
        content.append('cd2zKGDa2MYXohFaHzpDJIyXKk3FkAR');
        content.append('SB7VHmlvM/y4bGLXqYVAd7MYcuHKx6T');
        content.append('8lrV1DIgNvOTSRmh9vks59zFAHdoVuA');
        content.append('DXYS6CxW1Pax632FB7GUZJZt4/UWslJ');
        content.append('8TeZYlB3u06rxW0Zsi4W+ZHNwretLjX');
        content.append('Y0wfTwH3HMYmfsFrgiromIDu0KNdQlE');
        content.append('XUpCTqVF6SuMkECUhdXFDFac7wpBlZO');
        content.append('jloNISbVmeaWLSEHnLfMriHVzgN8vKb');
        content.append('jFhpQqA/lil3tFO7b5LFCHudxnHVVfm');
        content.append('WQE3FR0n2gd4FSGjVOgvHa8CimVseMZ');
        content.append('4LpkgnxODu6yrFxdnvc6BOUzMUHCKeB');
        content.append('UQ8q19UrBxPJpCqbz4BIB1SJP2q2aD5');
        content.append('33txRM+rcClulQC1r/C+Jb33kaa9fz1');
        content.append('RCqQO4RFLuJVvG7CPwBEkzOyiy+Rq0A');
        content.append('AAAASUVORK5CYII=');
    } else if beast == YETI {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAIAAAD8GO2jAAAAAXNSR0IArs4c6Q');
        content.append('AAAPFJREFUSIm9VcsOwzAIC9H+/5ezU');
        content.append('yZabGq31VDVAwGbEB4xFFlFE5KfZljR');
        content.append('HQ6HILiGy5TCOGHJ+XEIxg6cZewFgkh');
        content.append('/WT6qoRm4TzDQIztORayQOQw5uZcQBI');
        content.append('Z0d9MN8YpiteesxbLX8WhSOyh+pSYCM');
        content.append('TNmHziNJsoxUE4QwLpDJDebB6OTW+aA');
        content.append('BhmdhKKlaJFZze6X9LdmkdMo7RvoQIt');
        content.append('WcCHoqzD2J8dUCBaHuFxq6MYoRbBsKq');
        content.append('LWcVoVNTl5geDyVZ4SPJO/EZgz0if40');
        content.append('cQuZ7bilZ2RGkKeRdm/4es6uZ8NcJpW');
        content.append('9GJGdrI1iCDBBv4CP4E1QtjzoX8AAAA');
        content.append('ASUVORK5CYII=');
    } else if beast == PHOENIX {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAMAAABEpIrGAAAAAXNSR0IArs4c6Q');
        content.append('AAABVQTFRFAAAAAAAAAP8A/4gAjAC/A');
        content.append('AD/////XlWhuwAAAAd0Uk5TAP//////');
        content.append('/6V/pvsAAADESURBVDiNjVIBEsMgCJP');
        content.append('L//88a0kI1q3zej2FACEw4uWMPwD47s');
        content.append('UNgL27fwHmXxBs7vlliQWBI2iZGW4rE');
        content.append('bBcl2tlIPryo+BgBo8Hr7QP3TIKCaJV');
        content.append('HKKzjRMH0+PIQV3o4RwyUBRMatchz1M');
        content.append('H5SdAfuNgXZbqTQdX0nWINszqIu2Dgd');
        content.append('Ij+2cqrdwyq81aom0ni8MRsHFoAITKo');
        content.append('g2MJNl6vzWSlK5WZi+hIdXCJACWWOCU');
        content.append('o5XQ1NBLIDhBccjJchY/zyvgA0eqBfs');
        content.append('WjmxzAAAAAElFTkSuQmCC');
    } else if beast == WERETIGER {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAVtJREFUWIXFVssOwyAMC1X//5fZC');
        content.append('RGM44R2Un3ZAENCHqbNzLp9iOtL42Zm');
        content.append('d53qA9VsDxzOtX874A/txECH9fqJBzU');
        content.append('wqNHtsvUdxRrIwj84DcY5DiKQGcC1Wh');
        content.append('QOuyAqsvObD4gizKpcIeqSHSQC3dYQ4');
        content.append('k2747VgDo0Ozn4BcKCSu0Z4bE7tnUh0');
        content.append('AG+AY8Y1wi27xPqY5T3TAeXYOuccUOr');
        content.append('GWlApodq7ckkNqAOV0jXCG/N47sS1Gl');
        content.append('NajxWvnGZ7vfNz7IpQVTEeEKHKm067F');
        content.append('LA8KQPRwcxw3DGiBtj7zp5cvHVWsI90');
        content.append('gDkVKSTboy1AG9baJ0alnSen8MJ0QmP');
        content.append('pePZJFjiQReNEiDREETKnMM/ZXA7QAT');
        content.append('QYVT4z6sdK0FYQHWBqFlW++l+Lwr2TM');
        content.append('51XHC63Cte6ARG9CRGUbkgHWOFgvlmr');
        content.append('IZCDv6EDLOfq66eC2hkQgcpL95bDd3y');
        content.append('GH5Q4lUWauQCGAAAAAElFTkSuQmCC');
    } else if beast == WYVERN {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAUdJREFUWIXNV9EOxCAIE7P//+Xdw');
        content.append('2KG2GL1lt3xskTQFqjEWSnlLD+0+g7M');
        content.append('WVieRj3dsn0BjCBvIxWIG1e75DOO5Pu');
        content.append('zAIEIZiUtFAVue09HwlzcZQcHj8zjYY');
        content.append('xwBDLyvcxVADH1AOg767E/D5M4MNNIK');
        content.append('vZzLi7Vf/AgxBjpw8crhPoWEHWNvUrD');
        content.append('U2NELgxyCzKgLDMGxK2OQajnVri4PFB');
        content.append('cZ5q5Yx0aEiISZQRG6+zajVUKtVZExo');
        content.append('SX9xrPENgCdFjbzAhlV9DnOOqhckCFk');
        content.append('Go8FmhgB6DtYYDcV3tHGza74Ez1UgV2');
        content.append('LRMnItSTeYAAIxF92J88yVReUTs6eFt');
        content.append('NkFQ97I5v6VGqVCIb03kCQgUY0DM2qQ');
        content.append('DKbGb8Cb5BwIMrB/vboJEQI5UpGcG1i');
        content.append('i3Mgey6xeN0rSz8mqlKXxPqQ5Nw3176');
        content.append('Of1jAh9ZKnoxNr5u7QAAAABJRU5ErkJ');
        content.append('ggg==');
    } else if beast == SKELETON {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAS1JREFUWIXNl8ESwyAIRKWT//9le');
        content.append('2KG0F1ANG05GhKeKyCRMcYcP7QLLc45');
        content.append('h4iEL8555878mb06L2lwDSoiH0BtAN1');
        content.append('95YMrvmWAilm5vRqrFuZAlgvdoNZuCv');
        content.append('iAfqdWagXUte4x3BRgO7JgVnLvX6meE');
        content.append('CAK7s86Wz8CgHIBSZ35REAUgAVHQWwe');
        content.append('oGCRKrAMIzk18VCyIl9dZ0kqg9wFLHg');
        content.append('mc7Rb9GypEdnSQ1VgQTwkUwACRC3WBq');
        content.append('7sNuuUVIHs4wxytSFRAKaAlR9B+hsy6');
        content.append('wm0CjIFKrBR7wgBImM9wUOgewNtqHUd');
        content.append('MxAb2K8xNdO7oAuF1h8HqAT01j6CU9Y');
        content.append('qw4pf1ZaP4MQQYm1rLD9h/5sDJ2b+LY');
        content.append('BqL38MILrt2Oh+FADNg6zn7/wb0JHsW');
        content.append('/YGjG4jU/v1QnIAAAAASUVORK5CYII=');
    } else if beast == CHUPACABRA {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAVFJREFUWIXFVlsSgzAIRKcX804ew');
        content.append('zt5NPvTWLpdyBL7YCZjaoAly8NOZnbY');
        content.append('H2WuKG+20/1VOZS12U737DezbQvPSgw');
        content.append('w2Wy31ZbwzJ+vtrwx1w2gQjXq+sD8Hv');
        content.append('XK1OMT95kPcymxT6Sg3ajdkDEWpajJU');
        content.append('AGq75gvOBsHroB7YH9+y+j0VevfoR7a');
        content.append('+2eTyO4tABYEA8jyysAyu5BSzNfIMIo');
        content.append('GkFtx7jGYHljmqxRA70Yq+FAAAmVl4M');
        content.append('wfLcJobPYGirdRdV8mIRqyboi+DaOf5');
        content.append('7kZ+/6Ner8iyJz3ixJONFzqWeYL3918');
        content.append('tCx3Sg00Ozb9lMEl9342lLIB1mGlTrU');
        content.append('ymCId1D27IEoD/hFdbekWZaUjzi6IwC');
        content.append('MwlnO0UbunW9nFnKbpkGpAAVBGNitOo');
        content.append('vc9cJEpmaq0EwbBnwGoRkXn3XV2Qatq');
        content.append('//yVyLe50gnRmh6bv8kdX2onclKpJSQ');
        content.append('AAAAASUVORK5CYII=');
    } else if beast == BEHEMOTH {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('hCAYAAAC4JqlRAAABhGlDQ1BJQ0MgcH');
        content.append('JvZmlsZQAAKJF9kT1Iw0AcxV9bS0UqC');
        content.append('mYQcchQnVoQFXHUKhShQqgVWnUwufQL');
        content.append('mhiSFBdHwbXg4Mdi1cHFWVcHV0EQ/AB');
        content.append('xdXFSdJES/5cUWsR4cNyPd/ced++AYK');
        content.append('PKNKtrDNB028ykkmIuvyJGXhFBPwSEE');
        content.append('ZeZZcxKUhq+4+seAb7eJXiW/7k/R69a');
        content.append('sBgQEIlnmGHaxOvEU5u2wXmfWGBlWSU');
        content.append('+J46bdEHiR64rHr9xLrkc5JmCmc3MEQ');
        content.append('vEYqmDlQ5mZVMjniSOqZpO+cGcxyrnL');
        content.append('c5atcZa9+QvjBb05SWu0xxGCgtYhAQR');
        content.append('CmqooAobCVp1UixkaD/p4x9y/RK5FHJ');
        content.append('VwMgxjw1okF0/+B/87tYqTox7SdEkEH');
        content.append('5xnI8RILILNOuO833sOM0TIPQMXOlt/');
        content.append('0YDmP4kvd7WYkdA3zZwcd3WlD3gcgcY');
        content.append('fDJkU3alEM1gsQi8n9E35YGBW6Bn1eu');
        content.append('ttY/TByBLXaVvgINDYLRE2Ws+7+7u7O');
        content.append('3fM63+fgBXknKcyUKElgAAARpJREFUW');
        content.append('IXtV1EShCAIfTV7se7UMbyTR2t/loZ1');
        content.append('AUGsfvbNOJMJ8XyC2gLgwINYnwz+JwA');
        content.append('Ar4hxQT2fd2z3EaDAPOhMMofVCqo5Tj');
        content.append('YeO6XFCFiBRkiEkpDLLmHH1rWRMF3ei');
        content.append('L2pQEE9E6ygDs2uh0v2gchShAl4P+wl');
        content.append('oRIg+TP1Tv4WkWlLoAXZsZlERAKSYXa');
        content.append('340R+CGgB2/e8Kjz2HpwKkPOsUgtVAa');
        content.append('916meST1NKSuy1dbCkHJVZ+s4XAY1da');
        content.append('2zByg9rfG2NRoJn8JUDdwcnpE+63p2B');
        content.append('+pLv8J2QI1s16XPeq4A05j4LIrUdwS3');
        content.append('3Ad6XyA7Jz69qUpJJz9K7YQXodIv6tL');
        content.append('NfPoxc6FVBS0irDL4cIQJX4PGf0zcw0');
        content.append('00xKtIqzwAAAABJRU5ErkJggg==');
    } else if beast == QILIN {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAWZJREFUWIXFV9sNwzAIJJUXy04ZI');
        content.append('ztltPSjdUUod5ydSkVCTcDgCy+7i5md');
        content.append('9kd6KIt2Oy6/SN+f4zuzNXtFoOTdDvg');
        content.append('edV3W5ZnesQYgOkUgGNCMG4xLQputX+');
        content.append('Hc7fjI+5qu93JESw/DHYr59SCivASAD');
        content.append('OOXqkCQ3utgjpGsYqUOnCyvWuQEgUEF');
        content.append('KRQn3oBVPQPB1iUfxw27gWfl69UoWWV');
        content.append('U5RelsNp8GoBacAM1NFfpKE2D4T8/cy');
        content.append('Drc3WYRPs4CdkMuYzi6AQ9Z4Q2V4iGM');
        content.append('iuuqucjF+nRDdiMiPpMDvxqBlUU2Cxg');
        content.append('UaUAMkDVWgYOzIqxgaOyenZId8JIqBP');
        content.append('icYvaz69rXpjNAdb3SM5aMLZp88L4BZ');
        content.append('Ux22SzVbrItO6QOa+AobXV0DJ7X8n85');
        content.append('mj8RrkKpIoCPQuQ0wygAgSRMi7pMavY');
        content.append('Iv3lVjxzkHi7zLaqH3otHwXCCPmlgwj');
        content.append('lfIb8pt7vT/4Z3aEnqUD9Eh6b3ogAAA');
        content.append('AASUVORK5CYII=');
    } else if beast == NUE {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAY5JREFUWIXFVtuNwzAMY4Ms1p06R');
        content.append('nbKaLmPqwOZoSilQO8EFHFtWQ9aov0A');
        content.append('cOAfZY1/Nuyp4gvPrwTwwBuBDTteeF6');
        content.append('+MbAqCJVAtecMgA2w88rgp+gtmYENuz');
        content.append('XKesMJOxtoOlvHhv3ALxLneMN+mVdza');
        content.append('uxsRh0Ax8JRd8acXYZIB8WpCNk4G67W');
        content.append('qvpQ61MRZtIpxOjkTjfYADqGGJm73bA');
        content.append('KvXYGmbM7uikTxmwqyPn/XUK6tAZEG2');
        content.append('ZrmZ5rvfg7EegynsssosB07sQSSpV9B');
        content.append('7nCZh9yBXvFjM4uBhMOqLiAIpMpjlfQ');
        content.append('M/tll9p0BCorzjD7uqNg9NK7gBHoFE7');
        content.append('Wbor/403JawtvrJxX/DASUaLsT7eho9');
        content.append('LKMTtih7EW2EfZLp1K7+xTevIuUNmrc');
        content.append('ZyLbwCnq1BMEXDV67qiskd6fpODsvsk');
        content.append('40CjjfJVzPMMOcPL+zrH0C6kTnbVPj6');
        content.append('GiYiySDN6dXtdxiytc3eZV9lz1nG8js');
        content.append('gyAort5c4+fln4kor716ikjDpRgWcwf');
        content.append('/Qq/gv5AcT1gDac0N+XAAAAAElFTkSu');
        content.append('QmCC');
    } else if beast == FENRIR {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAATlJREFUWIXtVkEOwzAII1X//+XuF');
        content.append('JUQYyCL2h2WyzREsQMG0kTkkhfP8Sb4');
        content.append('n8APEfBk+IA87wxYsId64xQRkQZAm/p');
        content.append('v7RvPDePd2AJee0mMGtCBm4xZ0PYL2L');
        content.append('8iYMH76bdFJJB9mYAXrNs3132G0DfVY');
        content.append('B64tqPylQnowNrKgiKyOmqZQCbV2XIU');
        content.append('yNxdYFOKBlNWeF2kKA5wnV2q6Y8OyUi');
        content.append('+BCugkYDFzgG2lKp97w0sE2dcRggkIy');
        content.append('hGDBFROHMGLIg39TyxeiTscmuWgAAn/');
        content.append('ctIVLrDZHp+EQGnAUzfoBF/9B0gi59k');
        content.append('bAVXhMo2KiUQEWL/meiAoP3q2VtHywc');
        content.append('JOPHI4ZPQC7r6SgJ+x+SgnTJ9X2lH4D');
        content.append('e/iqOJqImtrGC4C6yCvRlOAtFD4h+Do');
        content.append('QkHj0oTgYPvNj0t188HMBJ+JBUmIqUA');
        content.append('AAAASUVORK5CYII=');
    } else if beast == WENDIGO {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAMAAABEpIrGAAAAAXNSR0IArs4c6Q');
        content.append('AAABVQTFRFAAAAAAAAAP8A/4gAjAC/A');
        content.append('AD/////XlWhuwAAAAd0Uk5TAP//////');
        content.append('/6V/pvsAAADISURBVDiNjVIBDsQgCMO');
        content.append('k/3/z7QRKu7lkLjOipZZKrGvg+h6jNq');
        content.append('MChaHjAvwX2Js2ITGxHJHhnOcVQNM3a');
        content.append('ENEQ5/VWCJ6AJ0iixtg0rRoAixNguCW');
        content.append('+MHYRRrDFw1ZkALG6jUlG8A04MAwAOD');
        content.append('M0FaDKm4MXssOYhFrIqHP3Yh6LnlKqN');
        content.append('Vyuzz6MFRe1ia90xqeDDUJwBj6Y1eTF');
        content.append('BKTgT26S8j+7GuCCbU5FUDa3vxz54Oc');
        content.append('B6sTgLLvlYEFleN4BwDzqwZJ8Ibeqx9');
        content.append('0awciQiXInQAAAABJRU5ErkJggg==');
    } else if beast == GHOUL {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAV5JREFUWIWtV+0OhCAMG8b3f2Xvj');
        content.append('15GbTtAmlz0yMa6T7BFxBU7cUVEI+8C');
        content.append('xxaDV3pvaa1F6V4t4rxAb5UFozvAcQD');
        content.append('ZWwx/kYbvKYh4uzFovCewoxSz0cH9zk');
        content.append('55FM/mrtrzf5QHsTnfmTRunA0W6Vgj4');
        content.append('ELNIomySUYXoaOF3rT0Qz3meZKZiwAL');
        content.append('LZJ1a4TQfBuqfmdGWDrA5ZOIzANzK/L');
        content.append('dyd74PogaPB8jrq0TwTkCqp3yATRK4s');
        content.append('aeFDwkRgyDE3vOggcXPJ1MfCHAeh0rH');
        content.append('1MSQVu3b4pqqlUjlumrlNzr79PQTTWF');
        content.append('quVMgR52g0yCjV/UQSfwHSMYqgac5+7');
        content.append('ygYRYe2YdSkBVcmWEkcuyLHqUAFMgin');
        content.append('RdFZw5vvfOgQV8n4Tq2EWIluQRGL0fm');
        content.append('rteqXNjPQKTn2B/gFx/K2bV7O54YlMK');
        content.append('0dpnt4HySI3b2RQQx9Y+zbDwqhSYM2K');
        content.append('NwEb8AAKQhEXXTSFuAAAAAElFTkSuQm');
        content.append('CC');
    } else if beast == PIXIE {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAQhJREFUWIXNVtEOxCAIg8v9/y9zT');
        content.append('2SOgBbEeD6NZbO1VICJSOji+twE/wsC');
        content.append('X/RDkSdTzNxGAFJAwZmZmPlF5jgBETk');
        content.append('CDBPw5O4kc92EKQ/os42PExgl15Tou9');
        content.append('0bwZSohPa0FXBLuuSB6qk9xVIK6CYVE');
        content.append('lG6IAIeaIbIzCtTArb8RrG3uYKujBoS');
        content.append('8MCsAhpHIMgtcU1oa39EbKwJ3nukYob');
        content.append('dMMyZdfGgggdWUmC2YdSW7TN6S5Ye8P');
        content.append('LeUQGXBCJCr58bSMATkQfYoQTcDU/NB');
        content.append('fBENMYWdIfENAW22BDRNK6kA/KA28U2');
        content.append('gXVdH8mW1xA54Y4KUwUy5qoaMWxG2VP');
        content.append('plcwSSU9E3eu6CX/F99YiwUo5eQAAAA');
        content.append('BJRU5ErkJggg==');
    } else if beast == AMMIT {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAUFJREFUWIXFVlsSgyAMXDu9mHfyG');
        content.append('N6Jo9mPFpvGPDao08wwgCZk2UDCBGDD');
        content.append('H+U5YrSi7eMF830AVrQfB5bj/u0MkC1');
        content.append('qK9re+lz2Uidby2mxcw/QVSAeGT2Sdu');
        content.append('BNtUX3LSGQO/V2qL8NsFCjTNOeAcpaG');
        content.append('gLgGwYdjqukdAv0P88mW1c0nm4LzNkw');
        content.append('hIlIn+yzWc+S0hm4QygAmWQAVzRXZ6g');
        content.append('YaccL5hSE1JGhnPA5iaNOvIWtQiYLWB');
        content.append('9TIehOupHs2WoYsUTlAeBYCbMCFKXpP');
        content.append('i4xAByzYrRzbeexQOf+UV2LKTG/xnlk');
        content.append('470fwIagUyj7ESmH4Mr679mVGWCSjtR');
        content.append('npHyF9JytiNZZoAA4hikYC7SxRj2BZE');
        content.append('5YVmGdAZ3DtfRXcRTj6k2hds+EZISZ8');
        content.append('nsgY6gqNABdCSOpgqSvlqXLhCha6wW5');
        content.append('/qpme8KK6AAAAABJRU5ErkJggg==');
    } else if beast == BERSERKER {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAR9JREFUWIXFl8EOwyAMQ8O0//9ld');
        content.append('kJClk2csK0+tZSSh2kCHREx40G90h6I');
        content.append('N0k7a2P3JYD18vAGou+PHEQD7IEZxGr');
        content.append('bA6ng+DwFwMBzu1aOsD6GC9pgJGcBcJ');
        content.append('bsGRvLAkBqFgCdUi4dloADnNa144AaU');
        content.append('wIEac1mxdzC94n8JLt1QCgHYKmoBq/0');
        content.append('tQFYkBOAOfOlvBSjsjpQVB1gD8iu/wZ');
        content.append('wKsU/BcB0w4pX1LscmG0yrOabrngOqA');
        content.append('Bqwynklu8AAp3uC/JORGuGaCt+AwF9D');
        content.append('bCaA+qLN7depn4WqLNhsbb6ADizi9zv');
        content.append('AaC+dJjvAywZJ987ALWmWeExP8beqV8');
        content.append('duRhIotoSsHIc0FZUDeC03s1dsfvjdR');
        content.append('146b4QXWbB4w58AF2Ueh/5xGUaAAAAA');
        content.append('ElFTkSuQmCC');
    } else if beast == RAKSHASA {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAIAAAD8GO2jAAAAAXNSR0IArs4c6Q');
        content.append('AAAQtJREFUSImtVkkSwzAIM3lJp2/o/');
        content.append('79GD+l4AYRR4xwyMQbJFkvbGvFoa8rY');
        content.append('/3kQwXl0dctHcCE64ljsgtH9Vn5MmQL');
        content.append('D8CrWVqi9XFsPdW/Dt0GgMoacf/aLwa');
        content.append('LQ70wEBPv8rDokZUJurLso1Zs05MWTJ');
        content.append('1ABfYkgbDrEl2lQHzUGvS/pAn06cHIC');
        content.append('NGqMkSBGifKCaF0Wj5KMYlol02g9vo/');
        content.append('GvO9oiebISsnS0JUArvDN9SuDCEHHgR');
        content.append('ScB51B2MMdID6DcrLVifS+X5/7QyJXW');
        content.append('S0ViQ3TgL1AsL+4rJbwr5F3G52MamO+');
        content.append('YmXsWL5rPaDhF1zp3n+2jLFo1t6jGzX');
        content.append('6TiwWJKwQ8zuM3gmOfgHWEqIKfpZ+Tw');
        content.append('AAAABJRU5ErkJggg==');
    } else if beast == BEAR {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAATZJREFUWIXFV8sSwyAIXDr9/1+2l');
        content.append('+oQwlsz2VNrFFYWFAnAwIv4VBeMMTDG');
        content.append('nbM1HuGrGeIgosu3+d+ax+dE9gCA8Je');
        content.append('ATySiZcgyKA1p49KG9AEICaRRTsYbky');
        content.append('StMc1HKQe40UlCG6tgEdDCzsMqDc853');
        content.append('jf+25J05UAGnSSMoEpglZnEjEB3PeBE');
        content.append('wNqJt8POGjMJrYTSJLBKMwOTQKSlVgW');
        content.append('SWAZuEsqdRaSyh1aagGYoo3NFkvRBxA');
        content.append('8b7qQapTaBiSga1URMH0Sny28iFQHPA');
        content.append('aDvOitFWQKOTt2XCVSSqtMRhQT4iWg5');
        content.append('8G7NbQLcSXQTdkiEVVCt6+rarSQ8AZf');
        content.append('Azu6BnByPRuBxCaLHyFYEsldvp/RSBH');
        content.append('jDoTnvjt38wOkJORHZpp9aY3bF1ksna');
        content.append('tMyL6nLN7z8PP8BC0hLIwSnudMAAAAA');
        content.append('SUVORK5CYII=');
    } else if beast == TITAN {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('hCAYAAAC4JqlRAAABhGlDQ1BJQ0MgcH');
        content.append('JvZmlsZQAAKJF9kT1Iw0AcxV9bS0UqC');
        content.append('mYQcchQnVoQFXHUKhShQqgVWnUwufQL');
        content.append('mhiSFBdHwbXg4Mdi1cHFWVcHV0EQ/AB');
        content.append('xdXFSdJES/5cUWsR4cNyPd/ced++AYK');
        content.append('PKNKtrDNB028ykkmIuvyJGXhFBPwSEE');
        content.append('ZeZZcxKUhq+4+seAb7eJXiW/7k/R69a');
        content.append('sBgQEIlnmGHaxOvEU5u2wXmfWGBlWSU');
        content.append('+J46bdEHiR64rHr9xLrkc5JmCmc3MEQ');
        content.append('vEYqmDlQ5mZVMjniSOqZpO+cGcxyrnL');
        content.append('c5atcZa9+QvjBb05SWu0xxGCgtYhAQR');
        content.append('CmqooAobCVp1UixkaD/p4x9y/RK5FHJ');
        content.append('VwMgxjw1okF0/+B/87tYqTox7SdEkEH');
        content.append('5xnI8RILILNOuO833sOM0TIPQMXOlt/');
        content.append('0YDmP4kvd7WYkdA3zZwcd3WlD3gcgcY');
        content.append('fDJkU3alEM1gsQi8n9E35YGBW6Bn1eu');
        content.append('ttY/TByBLXaVvgINDYLRE2Ws+7+7u7O');
        content.append('3fM63+fgBXknKcyUKElgAAAUtJREFUW');
        content.append('IW9V1sOgzAMC2gX404cgztxNPZVFGV2');
        content.append('GrfVLE0aXRu7eZFtZvaYgMtuuH7aoZh');
        content.append('5sSkCGnkkY+tLBXiS6AW/por4KJsReR');
        content.append('M3GoJdIc/AcmOZAERy2jF88wYpCb2IF');
        content.append('o4moJcjSwV4csX1SIiUhJ4sGutVwmU3');
        content.append('TNayAJb9VbEsDFISVsBuz7BEQCONCVk');
        content.append('V8VQ/l93lvegsOj/lgZZYFWSl+DcPIB');
        content.append('tlD7C4+vXs+5QHvOoWS7QWz7Bbh2fN7');
        content.append('ZUwRHHZ72kIottR+2V7qoACfGx9bVcM');
        content.append('R4G998VPK45EM+NWBaUQREGx440OI10');
        content.append('BkRyJY88M0cNwHuhNvz2wYQXZNBvsgr');
        content.append('4fZKXWK2NpIIm3ZFByY1hAlcDvRaLlP');
        content.append('yYqUF/woB5Y8Zqt9JDXAysImYjszJ6R');
        content.append('+1ELDZYzDchjaAhhZabYMGUgmUH2Qvo');
        content.append('C6Kp2/lujcjkAAAAASUVORK5CYII=');
    } else if beast == GOLEM {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAVVJREFUWIXFVlmuAzEII9W7/5XTn');
        content.append('44edWwDXVSkqpOBgFmHFRE7fki3XxqP');
        content.append('iPh76zaL3ZqpmEVgw/OCnwMmaB6BSzn');
        content.append('zdM2MR0wjsOB/J4PXc+Y1VfYxZwOVTE');
        content.append('c2vtUFGUThngeAIe54HyBXxJizUdEm0');
        content.append('pmHwFwtrPP4LKI8rUBkHnvPzgcAZ7wb');
        content.append('jUwV2JjOAQSoZoECQc41gEkRKmIgHnR');
        content.append('2AY5bpeRVIKDnH8AGgexxx/Pc+wPic4');
        content.append('DlWUWmY9yA8jXAxiozptoP+RFHLXEAL');
        content.append('owsLaxAK/4BwFTqmFj/I2+hKKJkZ1To');
        content.append('dgOUEQBmg0hFqQLXSkEmVeUIhLUugnP');
        content.append('AI7ch6/9sHL3EodKZGbg7EmwnqfZSn2');
        content.append('OlTaRiXgOXkU6rZkBCvjc81dLBNLhdg');
        content.append('vDrSchAuC2nSkHvdWiv3ZBRdw1g3YZu');
        content.append('2Zh+9czO6CMwUfri/U+sGW/RHQ7SiUU');
        content.append('jgGBMAAAAAElFTkSuQmCC');
    } else if beast == MANTICORE {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAAVZJREFUWIXFV+0OwyAIPJc9uG/e/');
        content.append('ZlG6R0fbZeRNHGKcOAJrgE48Ed5/dM5');
        content.append('ALyzikcHWufzqzCdRwAop9ahAqqkocC');
        content.append('B4ThysILwwE79ynf0vJ7VZXNlABkQ6z');
        content.append('obm/11AE40co5lYwMwlCxKG4FKK9ubH');
        content.append('HOn1qAydCVD9AiYsyi6O9wZ41kHWsd2');
        content.append('ZdiVs0XnCZl1gBn/ReWjgXlXpUIs73N');
        content.append('4xBcjJ0y/UHzm3FaKbdm0dT1TVpUes9');
        content.append('X6lwPsXKtNJSMMmMyAVVQGroA4dVAIs');
        content.append('rH5K/Ug2BMzuuo02yM2AFGkWRBREGEG');
        content.append('VEMKOlqqLrC17VE6mdnBGdvxuNAnmbq');
        content.append('z6+8BSF3hMWa27Vq6fCJIMdufWLvGZK');
        content.append('9FZwh7ascsTSpt9ggUNxSXTv68yL3ov');
        content.append('BdP1JhOR5A5b8959uVk118jpZbl6iZE');
        content.append('KWf2Vpv0CO7U+czn2S/9NfuFfAC08WC');
        content.append('OS4iJHgAAAABJRU5ErkJggg==');
    } else if beast == DRAGON {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAIAAAD8GO2jAAAAAXNSR0IArs4c6Q');
        content.append('AAAR5JREFUSImdVkkSwzAIw5k8uk/wr');
        content.append('91DmgxFIOQwvQTLIFbX7JY1DWXNUq8K');
        content.append('gRLr1RHK8NfGJzr2mpQQAnJGKUeDIJB');
        content.append('7G8pItWk0hK/3ETDjhTnuo7n1ZIYAeP');
        content.append('FLz202Mfuqj/RANCcq+1aphHRgRHi7o');
        content.append('vUUkDhAhBVxpCnmQZwVKHQbxqQ08Zp2');
        content.append('BKPXL5Vw5Buf7I8jvYxE0svKvjusCxY');
        content.append('TgtkjQTd0yPT59iOAs0VwdoT+H8cXY1');
        content.append('zpwzCdyBGX69ZaZbL1mCj0LQzaw/T5x');
        content.append('NSpqb/l5+CyRR4Nz6Cyrk/43wUzqeAV');
        content.append('nqFDg4klSVey5I/oK+5r3jVo7fLM7la');
        content.append('evewVA7UAol1u1H/GB+fF0DbDoadi63');
        content.append('/GRgths+o+1rQvxnQq3zSqGWEAAAAAS');
        content.append('UVORK5CYII=');
    } else if beast == GIANT {
        content.append('iVBORw0KGgoAAAANSUhEUgAAACAAAAA');
        content.append('gCAYAAABzenr0AAAAAXNSR0IArs4c6Q');
        content.append('AAATdJREFUWIXFV8sSwyAIxI7//8v0k');
        content.append('LEhCMsjyXQPTaUoG8GlDiJi+iPmdchE');
        content.append('NMBY+2pYvtpvbCPGC7L4HhHLvMDVNvG');
        content.append('CMjArG4NnhPOlZsx6jS0ikuAwbMj/sI');
        content.append('Ma0IGljcXYgn4Ji9D4fTJOwT5pT4fl5');
        content.append('/lcCQZF6C2A/HHRaZtKgb9VPUQ7S/Sx');
        content.append('gyOb/s0qwsz8jUAHHom8uDYIPKvcRQJ');
        content.append('ZaUaCZCphJZAVcAWVdqmO/roOgQwi6Z');
        content.append('ZB/Tk3izCCLE6b8MME6gVaTEEksXXRa');
        content.append('tRAphndJmBV8EJVojHJoAZQw9G74D0x');
        content.append('QArqsrqj1IwQBqGjhOfdSkEXGSU9EJw');
        content.append('CayF0CvKBF5o74LXfug48kIJObZwAKb');
        content.append('C2Wf9jzsC73EACUd/vnAZ77svdMEYiB');
        content.append('VlkrmX7zmUvc6/hCwI5WmV2vSpWAAAA');
        content.append('AElFTkSuQmCC');
    }

    return content.into();
}
