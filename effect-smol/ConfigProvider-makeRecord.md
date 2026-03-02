Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.makeRecord

Creates a `Record` node representing an object-like container with known
child keys.

When to use:
- Describing a directory or JSON object inside a custom provider.

The optional `value` allows a node to be both a container and a leaf at the
same time (e.g. an env var `A=x` that also has children `A_FOO`, `A_BAR`).

**Example** (Creating a record node)

```ts
import { ConfigProvider } from "effect"

const node = ConfigProvider.makeRecord(new Set(["host", "port"]))
// { _tag: "Record", keys: Set(["host", "port"]), value: undefined }
```

**See**

- `makeValue` – for terminal leaves
- `makeArray` – for array-like containers

**Signature**

```ts
declare const makeRecord: (keys: ReadonlySet<string>, value?: string) => Node
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L189)

Since v4.0.0