# traverse

Maps each entry of a `ReadonlyRecord` to an effect and collects the results into a new record.

To import and use `traverse` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from '@effect/data/ReadonlyRecord'

// Can be accessed like this
ReadonlyRecord.traverse
```

**Example**

```ts
import { traverse } from '@effect/data/ReadonlyRecord'
import { some, none, Applicative } from '@effect/data/Option'

assert.deepStrictEqual(
  traverse(Applicative)({ a: 1, b: 2 }, (n: number) => (n <= 2 ? some(n) : none())),
  some({ a: 1, b: 2 })
)
assert.deepStrictEqual(
  traverse(Applicative)({ a: 1, b: 2 }, (n: number) => (n >= 2 ? some(n) : none())),
  none()
)
```

**Signature**

```ts
export declare const traverse: <F extends TypeLambda>(
  F: applicative.Applicative<F>
) => {
  <K extends string, A, R, O, E, B>(f: (a: A, key: K) => Kind<F, R, O, E, B>): (
    self: Record<K, A>
  ) => Kind<F, R, O, E, Record<string, B>>
  <K extends string, A, R, O, E, B>(self: Record<K, A>, f: (a: A, key: K) => Kind<F, R, O, E, B>): Kind<
    F,
    R,
    O,
    E,
    Record<string, B>
  >
}
```
