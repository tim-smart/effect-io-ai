Package: `effect`<br />
Module: `Option`<br />

## Option.all

Combines a structure of `Option`s (tuple, struct, or iterable) into a single
`Option` containing the unwrapped structure.

**When to use**

- Collecting multiple `Option`s into one, preserving the input shape
- "All or nothing" combination — any `None` makes the result `None`

**Behavior**

- Tuple input → `Option` of a tuple with the same length
- Struct input → `Option` of a struct with the same keys
- Iterable input → `Option` of an `Array`
- Any `None` in the input → entire result is `None`

**Example** (Combining a tuple and a struct)

```ts
import { Option } from "effect"

const maybeName: Option.Option<string> = Option.some("John")
const maybeAge: Option.Option<number> = Option.some(25)

//      ┌─── Option<[string, number]>
//      ▼
const tuple = Option.all([maybeName, maybeAge])
console.log(tuple)
// Output:
// { _id: 'Option', _tag: 'Some', value: [ 'John', 25 ] }

//      ┌─── Option<{ name: string; age: number; }>
//      ▼
const struct = Option.all({ name: maybeName, age: maybeAge })
console.log(struct)
// Output:
// { _id: 'Option', _tag: 'Some', value: { name: 'John', age: 25 } }
```

**See**

- `product` for combining exactly two
- `productMany` for a homogeneous collection

**Signature**

```ts
declare const all: <const I extends Iterable<Option<any>> | Record<string, Option<any>>>(input: I) => [I] extends [ReadonlyArray<Option<any>>] ? Option<{ -readonly [K in keyof I]: [I[K]] extends [Option<infer A>] ? A : never; }> : [I] extends [Iterable<Option<infer A>>] ? Option<Array<A>> : Option<{ -readonly [K in keyof I]: [I[K]] extends [Option<infer A>] ? A : never; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1777)

Since v2.0.0