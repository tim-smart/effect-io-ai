Package: `effect`<br />
Module: `Array`<br />

## Array.getSomes

Extracts all `Some` values from an iterable of `Option`s, discarding `None`s.

**Example** (Extracting Some values)

```ts
import { Array, Option } from "effect"

console.log(Array.getSomes([Option.some(1), Option.none(), Option.some(2)])) // [1, 2]
```

**See**

- `fromOption` — convert a single Option
- `getSuccesses` — extract successes from Results

**Signature**

```ts
declare const getSomes: <T extends Iterable<Option.Option<X>>, X = any>(self: T) => Array<Option.Option.Value<ReadonlyArray.Infer<T>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3157)

Since v2.0.0