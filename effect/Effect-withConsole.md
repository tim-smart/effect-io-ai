# withConsole

Executes the specified workflow with the specified implementation of the
console service.

To import and use `withConsole` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.withConsole
undefined

**Signature**

```ts
export declare const withConsole: {
  <C extends Console>(console: C): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>
  <A, E, R, C extends Console>(effect: Effect<A, E, R>, console: C): Effect<A, E, R>
}
```
