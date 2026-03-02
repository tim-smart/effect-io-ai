Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.ConfigProvider

The core interface for loading raw configuration data.

When to use:
- Type-annotate variables that hold a provider.
- Implement a custom provider via `make`.

Key members:
- `load(path)` – resolves `mapInput` and `prefix` transformations, then
  delegates to `get`. This is what the `Config` module calls.
- `get(path)` – raw access to the underlying store, without path
  transformations.
- `mapInput` / `prefix` – optional path transformations set by
  `mapInput` and `nested`.

All methods return `Effect<Node | undefined, SourceError>`:
- `undefined` means "not found" (not an error).
- `SourceError` means the source itself failed.

**See**

- `make` – construct a provider from a lookup function
- `orElse` – compose providers with fallback

**Signature**

```ts
export interface ConfigProvider extends Pipeable {
  /**
   * Returns the node found at `path`, or `undefined` if it does not exist.
   * Fails with `SourceError` when the underlying source cannot be read.
   */
  readonly load: (path: Path) => Effect.Effect<Node | undefined, SourceError>

  /**
   * Raw access to the underlying source.
   */
  readonly get: (path: Path) => Effect.Effect<Node | undefined, SourceError>

  /**
   * Function to map the input path.
   */
  readonly mapInput: ((path: Path) => Path) | undefined

  /**
   * Prefix to add to the input path.
   */
  readonly prefix: Path | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L301)

Since v4.0.0