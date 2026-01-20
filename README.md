# Homebrew Tap for ast-index

Fast code search CLI for Android/Kotlin/Java and iOS/Swift/ObjC projects.

## Installation

```bash
brew tap defendend/ast-index
brew install ast-index
```

## Migration from kotlin-index

If you have the old `kotlin-index` installed:

```bash
brew uninstall kotlin-index
brew untap defendend/kotlin-index
brew tap defendend/ast-index
brew install ast-index
```

## Usage

```bash
# Initialize index in project root
cd /path/to/project
ast-index rebuild

# Search
ast-index search "ClassName"
ast-index class "BaseFragment"
ast-index usages "Repository"
ast-index implementations "Presenter"
```

## More Information

- [GitHub Repository](https://github.com/defendend/Claude-ast-index-search)
- [Full Documentation](https://github.com/defendend/Claude-ast-index-search#readme)
