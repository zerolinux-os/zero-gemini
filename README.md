# 🤖 ZeroGemini CLI Installer for ZeroLinux

**ZeroGemini** is a powerful AI assistant CLI tool that brings Google's Gemini AI to the terminal on ZeroLinux. It installs the Gemini CLI globally, creates easy shortcuts, and adds a launcher to your apps menu with a custom icon.

> ⚡ Created with passion by [ZeroX](https://github.com/ZeroLinux-7x) for the [ZeroLinux](https://github.com/ZeroLinux-7x) distribution.

---

## 🔧 What It Does

This script:

1. Installs **Node.js** and **npm** via Pacman.
2. Globally installs the official `@google/gemini-cli`.
3. Creates a shortcut command: `zero-gemini`.
4. Lets you set your **Gemini API key** easily.
5. Adds a custom icon and desktop launcher (for GUI access).
6. Registers it in your application menu as **ZeroGemini AI**.

---

## 🚀 Installation

Run the script on any Arch-based system (preferably on ZeroLinux):

```bash
bash install_zero_gemini.sh
```

Or make it executable and run:

```bash
chmod +x install_zero_gemini.sh
./install_zero_gemini.sh
```

---

## 🧠 How to Use

After installation:

- Run in terminal:

```bash
zero-gemini
```

- Or launch it from your application menu under **ZeroGemini AI**.

If you didn’t enter your API key during install, you can manually add it later:

```bash
echo 'export GEMINI_API_KEY="your-key-here"' >> ~/.zshrc && source ~/.zshrc
```

---

## 📁 File Structure

| File                         | Description                                      |
|-----------------------------|--------------------------------------------------|
| `install_zero_gemini.sh`    | Main installer script                            |
| `/usr/local/bin/zero-gemini`| CLI shortcut to run `gemini`                     |
| `/usr/share/pixmaps/zero-gemini.png` | Minimal SVG icon                     |
| `/usr/share/applications/zero-gemini.desktop` | Desktop launcher         |

---

## 🗣️ Arabic Description | الوصف بالعربية

**ZeroGemini** هي أداة ذكية تعتمد على Gemini CLI، تُدمج داخل ZeroLinux لتوفر تجربة ذكاء صناعي من داخل الطرفية (Terminal).

✅ تقوم بـ:
- تثبيت الأدوات اللازمة مثل Node.js و npm.
- تثبيت gemini-cli الرسمي من Google.
- إعداد الأمر `zero-gemini` للاستخدام السريع.
- حفظ مفتاح API الخاص بك تلقائياً.
- إضافة أيقونة و Launcher للواجهة الرسومية.

🧠 بعد التثبيت:
- يمكنك تشغيلها بكتابة: `zero-gemini` في الطرفية.
- أو من خلال قائمة التطبيقات تحت اسم **ZeroGemini AI**.

---

## 📜 License

This project is open-source and licensed under the [MIT License](LICENSE).

---

## ❤️ Credits

- Built by [ZeroX](https://github.com/ZeroLinux-7x)
- Uses [Gemini CLI](https://www.npmjs.com/package/@google/gemini-cli)

---