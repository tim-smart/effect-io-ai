# withConsole

Executes the specified workflow with the specified implementation of the
console service.

To import and use `withConsole` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.withConsole
```

**Signature**

```ts
export declare const withConsole: {
  <A extends Console>(console: A): <R, E, A>(effect: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A extends Console>(effect: Effect<R, E, A>, console: A): Effect<R, E, A>
}
```
