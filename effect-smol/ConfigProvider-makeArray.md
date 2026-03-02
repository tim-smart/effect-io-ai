Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.makeArray

Creates an `Array` node representing an indexed container with a known
length.

When to use:
- Describing a JSON array or a set of numerically-indexed env vars inside a
  custom provider.

The optional `value` allows a node to be both a container and a leaf at the
same time.

**Example** (Creating an array node)

```ts
import { ConfigProvider } from "effect"

const node = ConfigProvider.makeArray(3)
// { _tag: "Array", length: 3, value: undefined }
```

**See**

- `makeValue` – for terminal leaves
- `makeRecord` – for object-like containers

**Signature**

```ts
declare const makeArray: (length: number, value?: string) => Node
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L219)

Since v4.0.0