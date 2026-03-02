Package: `effect`<br />
Module: `ConfigProvider`<br />

## ConfigProvider.makeValue

Creates a `Value` node representing a terminal string leaf.

When to use:
- Building nodes inside a custom `ConfigProvider`'s `get` callback.

Does not mutate input. Returns a new plain object.

**Example** (Creating a value node)

```ts
import { ConfigProvider } from "effect"

const node = ConfigProvider.makeValue("3000")
// { _tag: "Value", value: "3000" }
```

**See**

- `makeRecord` – for object-like containers
- `makeArray` – for array-like containers

**Signature**

```ts
declare const makeValue: (value: string) => Node
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ConfigProvider.ts#L160)

Since v4.0.0