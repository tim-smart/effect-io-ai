# contramap

Given a `Predicate<A>` returns a `Predicate<B>`

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

**Example**

```ts
import * as P from '@effect/data/Predicate'
import * as N from '@effect/data/Number'

const minLength3 = P.contramap(N.greaterThan(2), (s: string) => s.length)

assert.deepStrictEqual(minLength3('a'), false)
assert.deepStrictEqual(minLength3('aa'), false)
assert.deepStrictEqual(minLength3('aaa'), true)
assert.deepStrictEqual(minLength3('aaaa'), true)
```

**Signature**

```ts
export declare const contramap: {
  <B, A>(f: (b: B) => A): (self: Predicate<A>) => Predicate<B>
  <A, B>(self: Predicate<A>, f: (b: B) => A): Predicate<B>
}
```
