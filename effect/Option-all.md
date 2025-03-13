Package: `effect`<br />
Module: `Option`<br />

## Option.all

Combines a structure of `Option`s into a single `Option` containing the
values with the same structure.

**Details**

This function takes a structure of `Option`s (a tuple, struct, or iterable)
and produces a single `Option` that contains the values from the input
structure if all `Option`s are `Some`. If any `Option` in the input is
`None`, the result is `None`. The structure of the input is preserved in the
output.

- If the input is a tuple (e.g., an array), the result will be an `Option`
  containing a tuple with the same length.
- If the input is a struct (e.g., an object), the result will be an `Option`
  containing a struct with the same keys.
- If the input is an iterable, the result will be an `Option` containing an
  array.

**Example**

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

**Signature**

```ts
declare const all: <const I extends Iterable<Option<any>> | Record<string, Option<any>>>(input: I) => [I] extends [ReadonlyArray<Option<any>>] ? Option<{ -readonly [K in keyof I]: [I[K]] extends [Option<infer A>] ? A : never; }> : [I] extends [Iterable<Option<infer A>>] ? Option<Array<A>> : Option<{ -readonly [K in keyof I]: [I[K]] extends [Option<infer A>] ? A : never; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L1389)

Since v2.0.0