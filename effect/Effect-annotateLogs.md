# annotateLogs

Annotates each log in this effect with the specified log annotation.

To import and use `annotateLogs` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.annotateLogs
```

**Signature**

```ts
export declare const annotateLogs: {
  (key: string, value: unknown): <R, E, A>(effect: Effect<R, E, A>) => Effect<R, E, A>
  (values: Record<string, unknown>): <R, E, A>(effect: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(effect: Effect<R, E, A>, key: string, value: unknown): Effect<R, E, A>
  <R, E, A>(effect: Effect<R, E, A>, values: Record<string, unknown>): Effect<R, E, A>
}
```
