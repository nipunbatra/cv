# Nipun Batra - CV

Professional CV prepared in LaTeX with automated builds and deployment.

## 📄 Downloads

- **Full CV**: [cv.pdf](cv.pdf)
- **Short CV**: [cv-short.pdf](cv-short.pdf)

## 🔧 Build System

### Quick Build
```bash
make all        # Build both versions
make full       # Build full CV only
make short      # Build short CV only
make clean      # Clean auxiliary files
```

### Auto-rebuild (requires `entr`)
```bash
make auto       # Auto-rebuild on file changes
```

### Manual Build
```bash
xelatex cv.tex && xelatex cv.tex          # Full version
xelatex cv-short.tex && xelatex cv-short.tex  # Short version
```

## 🏗️ Architecture

- **Single source**: One `cv.tex` file with conditional compilation
- **Binary flag**: `\ifcvshort` controls content inclusion
- **XeLaTeX**: Better font support and Unicode handling
- **Automated CI/CD**: GitHub Actions builds and deploys to GitHub Pages

## ✨ Features

- ✅ Single `.tex` file for both versions
- ✅ XeLaTeX with fontspec for custom fonts
- ✅ GitHub Actions automatic building
- ✅ GitHub Pages deployment
- ✅ Makefile for local development
- ✅ Auto-rebuild with file watching
- ✅ Clean separation of full/short content

## 🔄 Workflow

1. Edit `cv.tex`
2. Use `\ifcvshort\else...\fi` for full-only content
3. Push to master → auto-build → auto-deploy
4. PDFs available at GitHub Pages URL

Last updated: Auto-generated on each build
