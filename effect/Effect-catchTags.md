Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchTags

Handles multiple errors in a single block of code using their `_tag` field.

**When to Use**

`catchTags` is a convenient way to handle multiple error types at
once. Instead of using `catchTag` multiple times, you can pass an
object where each key is an error type's `_tag`, and the value is the handler
for that specific error. This allows you to catch and recover from multiple
error types in a single call.

The error type must have a readonly `_tag` field to use `catchTag`. This
field is used to identify and match errors.

**Example** (Handling Multiple Tagged Error Types at Once)

```ts
import { Effect, Random } from "effect"

class HttpError {
  readonly _tag = "HttpError"
}

class ValidationError {
  readonly _tag = "ValidationError"
}

//      ┌─── Effect<string, HttpError | ValidationError, never>
//      ▼
const program = Effect.gen(function* () {
  const n1 = yield* Random.next
  const n2 = yield* Random.next
  if (n1 < 0.5) {
    yield* Effect.fail(new HttpError())
  }
  if (n2 < 0.5) {
    yield* Effect.fail(new ValidationError())
  }
  return "some result"
})

//      ┌─── Effect<string, never, never>
//      ▼
const recovered = program.pipe(
  Effect.catchTags({
    HttpError: (_HttpError) =>
      Effect.succeed(`Recovering from HttpError`),
    ValidationError: (_ValidationError) =>
      Effect.succeed(`Recovering from ValidationError`)
  })
)
```

**Signature**

```ts
declare const catchTags: { <E, Cases extends { [K in Extract<E, { _tag: string; }>["_tag"]]+?: ((error: Extract<E, { _tag: K; }>) => Effect<any, any, any>); } & (unknown extends E ? {} : { [K in Exclude<keyof Cases, Extract<E, { _tag: string; }>["_tag"]>]: never; })>(cases: Cases): <A, R>(self: Effect<A, E, R>) => Effect<A | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<infer A, any, any> ? A : never; }[keyof Cases], Exclude<E, { _tag: keyof Cases; }> | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<any, infer E, any> ? E : never; }[keyof Cases], R | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<any, any, infer R> ? R : never; }[keyof Cases]>; <R, E, A, Cases extends { [K in Extract<E, { _tag: string; }>["_tag"]]+?: ((error: Extract<E, { _tag: K; }>) => Effect<any, any, any>); } & (unknown extends E ? {} : { [K in Exclude<keyof Cases, Extract<E, { _tag: string; }>["_tag"]>]: never; })>(self: Effect<A, E, R>, cases: Cases): Effect<A | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<infer A, any, any> ? A : never; }[keyof Cases], Exclude<E, { _tag: keyof Cases; }> | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<any, infer E, any> ? E : never; }[keyof Cases], R | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<any, any, infer R> ? R : never; }[keyof Cases]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L3955)

Since v2.0.0