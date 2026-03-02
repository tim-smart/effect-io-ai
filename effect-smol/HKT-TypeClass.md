Package: `effect`<br />
Module: `HKT`<br />

## HKT.TypeClass

Base interface for type classes that work with Higher-Kinded Types.

A TypeClass defines operations that can be performed on any type constructor
that matches the given TypeLambda. This enables writing generic code that
works across different container types like Array, Option, Effect, etc.

**Example**

```ts
import type { HKT } from "effect"

// Define a Functor type class
interface Functor<F extends HKT.TypeLambda> extends HKT.TypeClass<F> {
  map<A, B>(
    fa: HKT.Kind<F, never, never, never, A>,
    f: (a: A) => B
  ): HKT.Kind<F, never, never, never, B>
}

// Define a Monad type class
interface Monad<F extends HKT.TypeLambda> extends Functor<F> {
  flatMap<A, B>(
    fa: HKT.Kind<F, never, never, never, A>,
    f: (a: A) => HKT.Kind<F, never, never, never, B>
  ): HKT.Kind<F, never, never, never, B>
}
```

**Signature**

```ts
export interface TypeClass<F extends TypeLambda> {
  readonly [URI]?: F
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HKT.ts#L94)

Since v2.0.0