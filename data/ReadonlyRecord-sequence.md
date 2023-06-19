# sequence

Transforms a `ReadonlyRecord` of `Kind` values into a `Kind` of `Record` values.

Part of the `ReadonlyRecord` module, imported from `@effect/data/ReadonlyRecord`.

**Example**

```ts
import * as RR from '@effect/data/ReadonlyRecord'
import { some, none, Applicative } from '@effect/data/Option'

const sequence = RR.sequence(Applicative)

assert.deepStrictEqual(sequence({ a: some(1), b: some(2) }), some({ a: 1, b: 2 }))
assert.deepStrictEqual(sequence({ a: none(), b: some(2) }), none())
```

**Signature**

```ts
export declare const sequence: <F extends TypeLambda>(
  F: applicative.Applicative<F>
) => <R, O, E, A>(self: ReadonlyRecord<Kind<F, R, O, E, A>>) => Kind<F, R, O, E, Record<string, A>>
```
