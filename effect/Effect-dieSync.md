## dieSync

Creates an effect that dies with the specified error, evaluated lazily.

**Details**

This function allows you to create an effect that will terminate with a fatal error.
The error is provided as a lazy argument, meaning it will only be evaluated when the effect runs.

**See**

- `die` if you don't need to evaluate the error lazily.

**Signature**

```ts
declare const dieSync: (evaluate: LazyArg<unknown>) => Effect<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L2644)

Since v2.0.0