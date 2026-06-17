Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.mapInput

Transforms the path segments before they reach the underlying store.

**When to use**

Use when you need to rename, re-case, or otherwise transform config path
segments before lookup.

**Details**

The function `f` receives the whole path produced by earlier provider
transformations and must return a new path. Lookup path transformations
compose in application order: the existing transformation runs first, then
`f` runs. For providers composed with `orElse`, the transformation is
applied to each operand.

**Example** (Uppercasing path segments)

```ts
import { ConfigProvider } from "effect"

const provider = ConfigProvider.fromEnv({
  env: { APP_HOST: "localhost" }
})

const upper = ConfigProvider.mapInput(provider, (path) =>
  path.map((seg) =>
    typeof seg === "string" ? seg.toUpperCase() : seg
  )
)
```

**See**

- `constantCase` – a preset that converts to `CONSTANT_CASE`
- `nested` – for prepending a prefix instead of transforming

**Signature**

```ts
declare const mapInput: { (f: (path: Path) => Path): (self: ConfigProvider) => ConfigProvider; (self: ConfigProvider, f: (path: Path) => Path): ConfigProvider; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L488)

Since v4.0.0