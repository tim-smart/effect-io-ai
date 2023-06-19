# traverse

Maps each entry of a `ReadonlyRecord` to an effect and collects the results into a new record.

Part of the `ReadonlyRecord` module, imported from `@effect/data/ReadonlyRecord`.

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
  <A, R, O, E, B>(f: (a: A, key: string) => Kind<F, R, O, E, B>): (
    self: ReadonlyRecord<A>
  ) => Kind<F, R, O, E, Record<string, B>>
  <A, R, O, E, B>(self: ReadonlyRecord<A>, f: (a: A, key: string) => Kind<F, R, O, E, B>): Kind<
    F,
    R,
    O,
    E,
    Record<string, B>
  >
}
```
