Package: `effect`<br />
Module: `Option`<br />

## Option.filterMap

Alias of `flatMap`.

**Example**

```ts
import { Option } from "effect"

// Transform and filter numbers
const transformEven = (n: Option.Option<number>): Option.Option<string> =>
  Option.filterMap(n, (n) => (n % 2 === 0 ? Option.some(`Even: ${n}`) : Option.none()))

console.log(transformEven(Option.none()))
// Output: { _id: 'Option', _tag: 'None' }

console.log(transformEven(Option.some(1)))
// Output: { _id: 'Option', _tag: 'None' }

console.log(transformEven(Option.some(2)))
// Output: { _id: 'Option', _tag: 'Some', value: 'Even: 2' }
```

**Signature**

```ts
declare const filterMap: { <A, B>(f: (a: A) => Option<B>): (self: Option<A>) => Option<B>; <A, B>(self: Option<A>, f: (a: A) => Option<B>): Option<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L1608)

Since v2.0.0