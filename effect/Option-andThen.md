# andThen

Executes a sequence of two `Option`s. The second `Option` can be dependent on the result of the first `Option`.

To import and use `andThen` from the "Option" module:

```ts
import * as Option from "effect/Option"
// Can be accessed like this
Option.andThen
```

**Signature**

```ts
export declare const andThen: {
  <A, B>(f: (a: A) => Option<B>): (self: Option<A>) => Option<B>
  <B>(f: Option<B>): <A>(self: Option<A>) => Option<B>
  <A, B>(f: (a: A) => B): (self: Option<A>) => Option<B>
  <B>(f: B): <A>(self: Option<A>) => Option<B>
  <A, B>(self: Option<A>, f: (a: A) => Option<B>): Option<B>
  <A, B>(self: Option<A>, f: Option<B>): Option<B>
  <A, B>(self: Option<A>, f: (a: A) => B): Option<B>
  <A, B>(self: Option<A>, f: B): Option<B>
}
```
