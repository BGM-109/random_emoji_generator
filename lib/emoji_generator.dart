import 'dart:math';

class EmojiGenerator {

  static const List<String> allEmojis = [
    "😀",
    "😁",
    "😂",
    "😃",
    "😄",
    "😅",
    "😆",
    "😇",
    "😈",
    "👿",
    "😉",
    "😊",
    "☺️",
    "😋",
    "😌",
    "😍",
    "😎",
    "😏",
    "😐",
    "😑",
    "😒",
    "😓",
    "😔",
    "😕",
    "😖",
    "😗",
    "😘",
    "😙",
    "😚",
    "😛",
    "😜",
    "😝",
    "😞",
    "😟",
    "😠",
    "😡",
    "😢",
    "😣",
    "😤",
    "😥",
    "😦",
    "😧",
    "😨",
    "😩",
    "😪",
    "😫",
    "😬",
    "😭",
    "😮",
    "😯",
    "😰",
    "😱",
    "😲",
    "😳",
    "😴",
    "😵",
    "😶",
    "😷",
    "😸",
    "😹",
    "😺",
    "😻",
    "😼",
    "😽",
    "😾",
    "😿",
    "🙀",
    "👣",
    "👤",
    "👥",
    "👶",
    "👶🏻",
    "👶🏼",
    "👶🏽",
    "👶🏾",
    "👶🏿",
    "👦",
    "👦🏻",
    "👦🏼",
    "👦🏽",
    "👦🏾",
    "👦🏿",
    "👧",
    "👧🏻",
    "👧🏼",
    "👧🏽",
    "👧🏾",
    "👧🏿",
    "👨",
    "👨🏻",
    "👨🏼",
    "👨🏽",
    "👨🏾",
    "👨🏿",
    "👩",
    "👩🏻",
    "👩🏼",
    "👩🏽",
    "👩🏾",
    "👩🏿",
    "👪",
    "👨‍👩‍👧",
    "👨‍👩‍👧‍👦",
    "👨‍👩‍👦‍👦",
    "👨‍👩‍👧‍👧",
    "👩‍👩‍👦",
    "👩‍👩‍👧",
    "👩‍👩‍👧‍👦",
    "👩‍👩‍👦‍👦",
    "👩‍👩‍👧‍👧",
    "👨‍👨‍👦",
    "👨‍👨‍👧",
    "👨‍👨‍👧‍👦",
    "👨‍👨‍👦‍👦",
    "👨‍👨‍👧‍👧",
    "👫",
    "👬",
    "👭",
    "👯",
    "👰",
    "👰🏻",
    "👰🏼",
    "👰🏽",
    "👰🏾",
    "👰🏿",
    "👱",
    "👱🏻",
    "👱🏼",
    "👱🏽",
    "👱🏾",
    "👱🏿",
    "👲",
    "👲🏻",
    "👲🏼",
    "👲🏽",
    "👲🏾",
    "👲🏿",
    "👳",
    "👳🏻",
    "👳🏼",
    "👳🏽",
    "👳🏾",
    "👳🏿",
    "👴",
    "👴🏻",
    "👴🏼",
    "👴🏽",
    "👴🏾",
    "👴🏿",
    "👵",
    "👵🏻",
    "👵🏼",
    "👵🏽",
    "👵🏾",
    "👵🏿",
    "👮",
    "👮🏻",
    "👮🏼",
    "👮🏽",
    "👮🏾",
    "👮🏿",
    "👷",
    "👷🏻",
    "👷🏼",
    "👷🏽",
    "👷🏾",
    "👷🏿",
    "👸",
    "👸🏻",
    "👸🏼",
    "👸🏽",
    "👸🏾",
    "👸🏿",
    "💂",
    "💂🏻",
    "💂🏼",
    "💂🏽",
    "💂🏾",
    "💂🏿",
    "👼",
    "👼🏻",
    "👼🏼",
    "👼🏽",
    "👼🏾",
    "👼🏿",
    "🎅",
    "🎅🏻",
    "🎅🏼",
    "🎅🏽",
    "🎅🏾",
    "🎅🏿",
    "👻",
    "👹",
    "👺",
    "💩",
    "💀",
    "👽",
    "👾",
    "🙇",
    "🙇🏻",
    "🙇🏼",
    "🙇🏽",
    "🙇🏾",
    "🙇🏿",
    "💁",
    "💁🏻",
    "💁🏼",
    "💁🏽",
    "💁🏾",
    "💁🏿",
    "🙅",
    "🙅🏻",
    "🙅🏼",
    "🙅🏽",
    "🙅🏾",
    "🙅🏿",
    "🙆",
    "🙆🏻",
    "🙆🏼",
    "🙆🏽",
    "🙆🏾",
    "🙆🏿",
    "🙋",
    "🙋🏻",
    "🙋🏼",
    "🙋🏽",
    "🙋🏾",
    "🙋🏿",
    "🙎",
    "🙎🏻",
    "🙎🏼",
    "🙎🏽",
    "🙎🏾",
    "🙎🏿",
    "🙍",
    "🙍🏻",
    "🙍🏼",
    "🙍🏽",
    "🙍🏾",
    "🙍🏿",
    "💆",
    "💆🏻",
    "💆🏼",
    "💆🏽",
    "💆🏾",
    "💆🏿",
    "💇",
    "💇🏻",
    "💇🏼",
    "💇🏽",
    "💇🏾",
    "💇🏿",
    "💑",
    "👩‍❤️‍👩",
    "👨‍❤️‍👨",
    "💏",
    "👩‍❤️‍💋‍👩",
    "👨‍❤️‍💋‍👨",
    "🙌",
    "🙌🏻",
    "🙌🏼",
    "🙌🏽",
    "🙌🏾",
    "🙌🏿",
    "👏",
    "👏🏻",
    "👏🏼",
    "👏🏽",
    "👏🏾",
    "👏🏿",
    "👂",
    "👂🏻",
    "👂🏼",
    "👂🏽",
    "👂🏾",
    "👂🏿",
    "👀",
    "👃",
    "👃🏻",
    "👃🏼",
    "👃🏽",
    "👃🏾",
    "👃🏿",
    "👄",
    "💋",
    "👅",
    "💅",
    "💅🏻",
    "💅🏼",
    "💅🏽",
    "💅🏾",
    "💅🏿",
    "👋",
    "👋🏻",
    "👋🏼",
    "👋🏽",
    "👋🏾",
    "👋🏿",
    "👍",
    "👍🏻",
    "👍🏼",
    "👍🏽",
    "👍🏾",
    "👍🏿",
    "👎",
    "👎🏻",
    "👎🏼",
    "👎🏽",
    "👎🏾",
    "👎🏿",
    "☝",
    "☝🏻",
    "☝🏼",
    "☝🏽",
    "☝🏾",
    "☝🏿",
    "👆",
    "👆🏻",
    "👆🏼",
    "👆🏽",
    "👆🏾",
    "👆🏿",
    "👇",
    "👇🏻",
    "👇🏼",
    "👇🏽",
    "👇🏾",
    "👇🏿",
    "👈",
    "👈🏻",
    "👈🏼",
    "👈🏽",
    "👈🏾",
    "👈🏿",
    "👉",
    "👉🏻",
    "👉🏼",
    "👉🏽",
    "👉🏾",
    "👉🏿",
    "👌",
    "👌🏻",
    "👌🏼",
    "👌🏽",
    "👌🏾",
    "👌🏿",
    "✌",
    "✌🏻",
    "✌🏼",
    "✌🏽",
    "✌🏾",
    "✌🏿",
    "👊",
    "👊🏻",
    "👊🏼",
    "👊🏽",
    "👊🏾",
    "👊🏿",
    "✊",
    "✊🏻",
    "✊🏼",
    "✊🏽",
    "✊🏾",
    "✊🏿",
    "✋",
    "✋🏻",
    "✋🏼",
    "✋🏽",
    "✋🏾",
    "✋🏿",
    "💪",
    "💪🏻",
    "💪🏼",
    "💪🏽",
    "💪🏾",
    "💪🏿",
    "👐",
    "👐🏻",
    "👐🏼",
    "👐🏽",
    "👐🏾",
    "👐🏿",
    "🙏",
    "🙏🏻",
    "🙏🏼",
    "🙏🏽",
    "🙏🏾",
    "🙏🏿",
    "🌱",
    "🌲",
    "🌳",
    "🌴",
    "🌵",
    "🌷",
    "🌸",
    "🌹",
    "🌺",
    "🌻",
    "🌼",
    "💐",
    "🌾",
    "🌿",
    "🍀",
    "🍁",
    "🍂",
    "🍃",
    "🍄",
    "🌰",
    "🐀",
    "🐁",
    "🐭",
    "🐹",
    "🐂",
    "🐃",
    "🐄",
    "🐮",
    "🐅",
    "🐆",
    "🐯",
    "🐇",
    "🐰",
    "🐈",
    "🐱",
    "🐎",
    "🐴",
    "🐏",
    "🐑",
    "🐐",
    "🐓",
    "🐔",
    "🐤",
    "🐣",
    "🐥",
    "🐦",
    "🐧",
    "🐘",
    "🐪",
    "🐫",
    "🐗",
    "🐖",
    "🐷",
    "🐽",
    "🐕",
    "🐩",
    "🐶",
    "🐺",
    "🐻",
    "🐨",
    "🐼",
    "🐵",
    "🙈",
    "🙉",
    "🙊",
    "🐒",
    "🐉",
    "🐲",
    "🐊",
    "🐍",
    "🐢",
    "🐸",
    "🐋",
    "🐳",
    "🐬",
    "🐙",
    "🐟",
    "🐠",
    "🐡",
    "🐚",
    "🐌",
    "🐛",
    "🐜",
    "🐝",
    "🐞",
    "🐾",
    "⚡️",
    "🔥",
    "🌙",
    "☀️",
    "⛅️",
    "☁️",
    "💧",
    "💦",
    "☔️",
    "💨",
    "❄️",
    "🌟",
    "⭐️",
    "🌠",
    "🌄",
    "🌅",
    "🌈",
    "🌊",
    "🌋",
    "🌌",
    "🗻",
    "🗾",
    "🌐",
    "🌍",
    "🌎",
    "🌏",
    "🌑",
    "🌒",
    "🌓",
    "🌔",
    "🌕",
    "🌖",
    "🌗",
    "🌘",
    "🌚",
    "🌝",
    "🌛",
    "🌜",
    "🌞",
    "🍅",
    "🍆",
    "🌽",
    "🍠",
    "🍇",
    "🍈",
    "🍉",
    "🍊",
    "🍋",
    "🍌",
    "🍍",
    "🍎",
    "🍏",
    "🍐",
    "🍑",
    "🍒",
    "🍓",
    "🍔",
    "🍕",
    "🍖",
    "🍗",
    "🍘",
    "🍙",
    "🍚",
    "🍛",
    "🍜",
    "🍝",
    "🍞",
    "🍟",
    "🍡",
    "🍢",
    "🍣",
    "🍤",
    "🍥",
    "🍦",
    "🍧",
    "🍨",
    "🍩",
    "🍪",
    "🍫",
    "🍬",
    "🍭",
    "🍮",
    "🍯",
    "🍰",
    "🍱",
    "🍲",
    "🍳",
    "🍴",
    "🍵",
    "☕️",
    "🍶",
    "🍷",
    "🍸",
    "🍹",
    "🍺",
    "🍻",
    "🍼",
    "🎀",
    "🎁",
    "🎂",
    "🎃",
    "🎄",
    "🎋",
    "🎍",
    "🎑",
    "🎆",
    "🎇",
    "🎉",
    "🎊",
    "🎈",
    "💫",
    "✨",
    "💥",
    "🎓",
    "👑",
    "🎎",
    "🎏",
    "🎐",
    "🎌",
    "🏮",
    "💍",
    "❤️",
    "💔",
    "💌",
    "💕",
    "💞",
    "💓",
    "💗",
    "💖",
    "💘",
    "💝",
    "💟",
    "💜",
    "💛",
    "💚",
    "💙",
    "🏃",
    "🏃🏻",
    "🏃🏼",
    "🏃🏽",
    "🏃🏾",
    "🏃🏿",
    "🚶",
    "🚶🏻",
    "🚶🏼",
    "🚶🏽",
    "🚶🏾",
    "🚶🏿",
    "💃",
    "💃🏻",
    "💃🏼",
    "💃🏽",
    "💃🏾",
    "💃🏿",
    "🚣",
    "🚣🏻",
    "🚣🏼",
    "🚣🏽",
    "🚣🏾",
    "🚣🏿",
    "🏊",
    "🏊🏻",
    "🏊🏼",
    "🏊🏽",
    "🏊🏾",
    "🏊🏿",
    "🏄",
    "🏄🏻",
    "🏄🏼",
    "🏄🏽",
    "🏄🏾",
    "🏄🏿",
    "🛀",
    "🛀🏻",
    "🛀🏼",
    "🛀🏽",
    "🛀🏾",
    "🛀🏿",
    "🏂",
    "🎿",
    "⛄️",
    "🚴",
    "🚴🏻",
    "🚴🏼",
    "🚴🏽",
    "🚴🏾",
    "🚴🏿",
    "🚵",
    "🚵🏻",
    "🚵🏼",
    "🚵🏽",
    "🚵🏾",
    "🚵🏿",
    "🏇",
    "🏇🏻",
    "🏇🏼",
    "🏇🏽",
    "🏇🏾",
    "🏇🏿",
    "⛺️",
    "🎣",
    "⚽️",
    "🏀",
    "🏈",
    "⚾️",
    "🎾",
    "🏉",
    "⛳️",
    "🏆",
    "🎽",
    "🏁",
    "🎹",
    "🎸",
    "🎻",
    "🎷",
    "🎺",
    "🎵",
    "🎶",
    "🎼",
    "🎧",
    "🎤",
    "🎭",
    "🎫",
    "🎩",
    "🎪",
    "🎬",
    "🎨",
    "🎯",
    "🎱",
    "🎳",
    "🎰",
    "🎲",
    "🎮",
    "🎴",
    "🃏",
    "🀄️",
    "🎠",
    "🎡",
    "🎢",
    "🚃",
    "🚞",
    "🚂",
    "🚋",
    "🚝",
    "🚄",
    "🚅",
    "🚆",
    "🚇",
    "🚈",
    "🚉",
    "🚊",
    "🚌",
    "🚍",
    "🚎",
    "🚐",
    "🚑",
    "🚒",
    "🚓",
    "🚔",
    "🚨",
    "🚕",
    "🚖",
    "🚗",
    "🚘",
    "🚙",
    "🚚",
    "🚛",
    "🚜",
    "🚲",
    "🚏",
    "⛽️",
    "🚧",
    "🚦",
    "🚥",
    "🚀",
    "🚁",
    "✈️",
    "💺",
    "⚓️",
    "🚢",
    "🚤",
    "⛵️",
    "🚡",
    "🚠",
    "🚟",
    "🛂",
    "🛃",
    "🛄",
    "🛅",
    "💴",
    "💶",
    "💷",
    "💵",
    "🗽",
    "🗿",
    "🌁",
    "🗼",
    "⛲️",
    "🏰",
    "🏯",
    "🌇",
    "🌆",
    "🌃",
    "🌉",
    "🏠",
    "🏡",
    "🏢",
    "🏬",
    "🏭",
    "🏣",
    "🏤",
    "🏥",
    "🏦",
    "🏨",
    "🏩",
    "💒",
    "⛪️",
    "🏪",
    "🏫",
    "💻",
    "⏰",
    "⏳",
    "⌛️",
    "📷",
    "📹",
    "🎥",
    "📺",
    "📻",
    "📟",
    "📞",
    "☎️",
    "📠",
    "💽",
    "💾",
    "💿",
    "📀",
    "📼",
    "🔋",
    "🔌",
    "💡",
    "🔦",
    "📡",
    "💳",
    "💸",
    "💰",
    "💎",
    "🌂",
    "👝",
    "👛",
    "👜",
    "💼",
    "🎒",
    "💄",
    "👓",
    "👒",
    "👡",
    "👠",
    "👢",
    "👞",
    "👟",
    "👙",
    "👗",
    "👘",
    "👚",
    "👕",
    "👔",
    "👖",
    "🚪",
    "🚿",
    "🛁",
    "🚽",
    "💈",
    "💉",
    "💊",
    "🔬",
    "🔭",
    "🔮",
    "🔧",
    "🔪",
    "🔩",
    "🔨",
    "💣",
    "🚬",
    "🔫",
    "🔖",
    "📰",
    "🔑",
    "✉️",
    "📩",
    "📨",
    "📧",
    "📥",
    "📤",
    "📦",
    "📯",
    "📮",
    "📪",
    "📫",
    "📬",
    "📭",
    "📄",
    "📃",
    "📑",
    "📈",
    "📉",
    "📊",
    "📅",
    "📆",
    "🔅",
    "🔆",
    "📜",
    "📋",
    "📖",
    "📓",
    "📔",
    "📒",
    "📕",
    "📗",
    "📘",
    "📙",
    "📚",
    "📇",
    "🔗",
    "📎",
    "📌",
    "✂️",
    "📐",
    "📍",
    "📏",
    "🚩",
    "📁",
    "📂",
    "✒️",
    "✏️",
    "📝"
  ];

  String emojiGenerator(List<String> arr) {
    var random = Random();
    var index = random.nextInt(arr.length) - 1;
    return arr[index];
  }

}