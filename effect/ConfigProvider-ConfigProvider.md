Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.ConfigProvider

The core interface for loading raw configuration data.

**When to use**

Use to type-annotate variables that hold a provider or to implement a
custom provider via `make`.

**Details**

`load(path)` is the semantic lookup operation used by the `Config` module.
It applies provider transformations and composition before consulting the
underlying source. `undefined` means "not found" and `SourceError` means the
source itself failed.

**See**

- `make` – construct a provider from a lookup function
- `orElse` – compose providers with fallback

**Signature**

```ts
export interface ConfigProvider extends Pipeable {
  /**
   * Returns the node found at `path`, or `undefined` if it does not exist.
   * Fails with `SourceError` when the underlying source cannot be read.
   *
   * **When to use**
   *
   * Use to resolve a path through this provider's path transformations before
   * reading the backing source.
   */
  readonly load: (path: Path) => Effect.Effect<Node | undefined, SourceError>

  /** @internal */
  readonly state: ProviderState
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ConfigProvider.ts#L248)

Since v2.0.0