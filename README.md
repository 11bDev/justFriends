# Just Friends - Facebook Friends Feed Extension

A simple Chrome/Brave browser extension that automatically redirects you to your Facebook friends feed when you open Facebook.

## Features

- 🎯 Automatically redirects to Facebook friends feed (`?sk=h_chr`)
- ⚡ Works instantly when opening Facebook
- 🔒 No permissions required beyond Facebook access
- 🌐 Compatible with Chrome, Brave, Edge, and other Chromium-based browsers

## Installation

### Method 1: Install from Source (Developer Mode)

1. **Download or Clone this repository**
   ```bash
   git clone <your-repo-url>
   cd justFriends
   ```

2. **Open your browser's extension page**
   - **Chrome**: Navigate to `chrome://extensions/`
   - **Brave**: Navigate to `brave://extensions/`
   - **Edge**: Navigate to `edge://extensions/`

3. **Enable Developer Mode**
   - Toggle the "Developer mode" switch in the top-right corner

4. **Load the extension**
   - Click "Load unpacked"
   - Select the `justFriends` folder containing the extension files

5. **Done!** The extension is now active

## How It Works

When you open Facebook (facebook.com), the extension checks if you're on the main landing page. If so, it automatically redirects you to the friends feed using the `?sk=h_chr` parameter.

The extension only activates on Facebook pages and requires minimal permissions.

## Files

- `manifest.json` - Extension configuration
- `content.js` - Main redirect logic
- `icons/` - Extension icons (16x16, 48x48, 128x128)
- `convert_icons.sh` - Script to generate PNG icons from SVG sources

## Customization

If you want to modify the behavior, edit `content.js`:

- Change the redirect URL by modifying `FRIENDS_FEED_PATH`
- Adjust which pages trigger the redirect in the conditional logic

## Troubleshooting

**Extension not working?**
- Make sure Developer Mode is enabled
- Check that the extension is enabled in your extensions list
- Try refreshing the Facebook page
- Check the browser console for any errors

**Want to disable temporarily?**
- Go to your browser's extensions page
- Toggle off the "Just Friends" extension

## Privacy

This extension:
- ✅ Only runs on Facebook pages
- ✅ Does not collect any data
- ✅ Does not require additional permissions
- ✅ All code runs locally in your browser

## License

MIT License - Feel free to modify and distribute as needed.

## Contributing

Feel free to submit issues or pull requests to improve this extension!
