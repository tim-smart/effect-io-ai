# contramap

Use `mapInput` instead.

To import and use `contramap` from the "Predicate" module:

```ts
import * as Predicate from '@effect/data/Predicate'

// Can be accessed like this
Predicate.contramap
```

**Signature**

```ts
export declare const contramap: {
  <B, A>(f: (b: B) => A): (self: Predicate<A>) => Predicate<B>
  <A, B>(self: Predicate<A>, f: (b: B) => A): Predicate<B>
}
```
