# annotateLogs

Annotates each log in this effect with the specified log annotation.

To import and use `annotateLogs` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.annotateLogs
```

**Signature**

```ts
export declare const annotateLogs: {
  (key: string, value: Logger.AnnotationValue): <R, E, A>(effect: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(effect: Effect<R, E, A>, key: string, value: string): Effect<R, E, A>
}
```
