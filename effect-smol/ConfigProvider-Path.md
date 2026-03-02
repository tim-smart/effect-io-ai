Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.Path

An ordered sequence of string or numeric segments that addresses a node in
the configuration tree.

String segments name object keys; numeric segments index into arrays.

**Example** (A typical config path)

```ts
import type { ConfigProvider } from "effect"

const path: ConfigProvider.Path = ["database", "replicas", 0, "host"]
```

**Signature**

```ts
type Path = ReadonlyArray<string | number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L274)

Since v4.0.0