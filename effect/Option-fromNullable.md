## fromNullable

Converts a nullable value into an `Option`. Returns `None` if the value is
`null` or `undefined`, otherwise wraps the value in a `Some`.

**Example**

```ts
import { Option } from "effect"

console.log(Option.fromNullable(undefined))
// Output: { _id: 'Option', _tag: 'None' }

console.log(Option.fromNullable(null))
// Output: { _id: 'Option', _tag: 'None' }

console.log(Option.fromNullable(1))
// Output: { _id: 'Option', _tag: 'Some', value: 1 }
```

**Signature**

```ts
declare const fromNullable: <A>(nullableValue: A) => Option<NonNullable<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L684)

Since v2.0.0