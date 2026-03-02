Package: `effect`<br />
Module: `Option`<br />

## Option.void

A pre-built `Some(undefined)` constant.

**When to use**

- Returning a "success with no meaningful value" from an `Option`-returning function

**Example** (Using Option.void)

```ts
import { Option } from "effect"

console.log(Option.void)
// Output: { _id: 'Option', _tag: 'Some', value: undefined }
```

**See**

- `asVoid` to convert an existing `Option` to `Option<void>`

**Signature**

```ts
declare const void: Option<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1294)

Since v2.0.0