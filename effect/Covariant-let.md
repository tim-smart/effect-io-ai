Package: `@effect/typeclass`<br />
Module: `Covariant`<br />

## Covariant.let

**Example**

```ts
import * as covariant from "@effect/typeclass/Covariant"
import type { HKT } from "effect"
import { dual, pipe } from "effect/Function"

interface MyData<A> {
  readonly value: A
}

interface MyDataTypeLambda extends HKT.TypeLambda {
  readonly type: MyData<this["Target"]>
}

const map: covariant.Covariant<MyDataTypeLambda>["map"] = dual(
  2,
  <A, B>(self: MyData<A>, f: (a: A) => B): MyData<B> => ({ value: f(self.value) })
)

const Covariant: covariant.Covariant<MyDataTypeLambda> = { imap: covariant.imap<MyDataTypeLambda>(map), map }

const notation = {
  Do: { value: {} } as MyData<{}>,
  let: covariant.let(Covariant)
}

console.log(pipe(notation.Do, notation.let("foo", () => "bar")))
// { value: { foo: "bar" } }
```

**Signature**

```ts
declare const let: <F extends TypeLambda>(F: Covariant<F>) => { <N extends string, A extends object, B>(name: Exclude<N, keyof A>, f: (a: A) => B): <R, O, E>(self: Kind<F, R, O, E, A>) => Kind<F, R, O, E, { [K in keyof A | N]: K extends keyof A ? A[K] : B; }>; <R, O, E, A extends object, N extends string, B>(self: Kind<F, R, O, E, A>, name: Exclude<N, keyof A>, f: (a: A) => B): Kind<F, R, O, E, { [K in keyof A | N]: K extends keyof A ? A[K] : B; }>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Covariant.ts#L134)

Since v0.24.0