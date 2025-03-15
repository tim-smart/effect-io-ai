Package: `effect`<br />
Module: `Array`<br />

## Array.getSomes

Retrieves the `Some` values from an `Iterable` of `Option`s, collecting them into an array.

**Example**

```ts
import { Array, Option } from "effect"

const result = Array.getSomes([Option.some(1), Option.none(), Option.some(2)])
console.log(result) // [1, 2]
```

**Signature**

```ts
declare const getSomes: <T extends Iterable<Option.Option<X>>, X = any>(self: T) => Array<Option.Option.Value<ReadonlyArray.Infer<T>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2527)

Since v2.0.0