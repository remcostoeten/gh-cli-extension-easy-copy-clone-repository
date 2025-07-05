# Font Assets

This directory should contain the following font files for the terminal mockup:

## Required Fonts

### JetBrains Mono (Primary)
- **Download**: https://www.jetbrains.com/lp/mono/
- **Files needed**: JetBrains Mono Regular (ttf/otf)
- **Usage**: Main terminal text, code display

### SF Mono (Fallback)
- **Download**: Available with macOS or Xcode
- **Files needed**: SF Mono Regular (ttf/otf)
- **Usage**: Fallback font for systems without JetBrains Mono

## File Structure
```
assets/fonts/
├── JetBrainsMono-Regular.ttf
├── JetBrainsMono-Bold.ttf (optional)
├── SFMono-Regular.ttf
└── SFMono-Bold.ttf (optional)
```

## Font Specifications
- **Main text**: 32pt
- **List items**: 28pt
- **Style**: Monospace, optimized for code display
- **Weight**: Regular (400) primarily, Bold (700) for highlights

## License Notes
- JetBrains Mono: SIL Open Font License 1.1
- SF Mono: Apple System Font (check licensing for your use case)
