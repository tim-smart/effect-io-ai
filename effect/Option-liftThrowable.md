# liftThrowable

A utility function that lifts a function that throws exceptions into a function that returns an `Option`.

This function is useful for any function that might throw an exception, allowing the developer to handle
the exception in a more functional way.

To import and use `liftThrowable` from the "Option" module:

```ts
import * as Option from 'effect/Option'

// Can be accessed like this
Option.liftThrowable
```

**Example**

```ts
import * as O from 'effect/Option'

const parse = O.liftThrowable(JSON.parse)

assert.deepStrictEqual(parse('1'), O.some(1))
assert.deepStrictEqual(parse(''), O.none())
```

**Signature**

```ts
export declare const liftThrowable: <A extends readonly unknown[], B>(f: (...a: A) => B) => (...a: A) => Option<B>
```
