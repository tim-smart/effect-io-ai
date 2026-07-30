Package: `effect`<br />
Module: `Option`<br />

## Option.toArray

Converts an `Option` into an `Array`.
If the input is `None`, an empty array is returned.
If the input is `Some`, its value is wrapped in a single-element array.

**Example**

```ts
import { Option } from "effect"

console.log(Option.toArray(Option.some(1)))
// Output: [1]

console.log(Option.toArray(Option.none()))
// Output: []
```

**Signature**

```ts
declare const toArray: <A>(self: Option<A>) => Array<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L1545)

Since v2.0.0