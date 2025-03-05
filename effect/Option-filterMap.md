# filterMap

Alias of {@link flatMap}.

To import and use `filterMap` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.filterMap
```

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
export declare const filterMap: {
  <A, B>(f: (a: A) => Option<B>): (self: Option<A>) => Option<B>
  <A, B>(self: Option<A>, f: (a: A) => Option<B>): Option<B>
}
```
