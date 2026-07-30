Package: `effect`<br />
Module: `Array`<br />

## Array.fromOption

Converts an `Option` to an array.

**Example**

```ts
import { Array, Option } from "effect"

console.log(Array.fromOption(Option.some(1))) // [1]
console.log(Array.fromOption(Option.none())) // []
```

**Signature**

```ts
declare const fromOption: <A>(self: Option.Option<A>) => Array<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L218)

Since v2.0.0