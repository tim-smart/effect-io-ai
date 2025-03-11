## some

Wraps the given value into an `Option` to represent its presence.

**Example**

```ts
// Title: Creating an Option with a Value
import { Option } from "effect"

// An Option holding the number 1
//
//      ┌─── Option<number>
//      ▼
const value = Option.some(1)

console.log(value)
// Output: { _id: 'Option', _tag: 'Some', value: 1 }
```

**See**

- `none` for the opposite operation.

**Signature**

```ts
declare const some: <A>(value: A) => Option<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L187)

Since v2.0.0