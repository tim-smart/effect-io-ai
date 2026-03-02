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

**Example**

```ts
import { Data, Effect } from "effect"

// Define tagged error types
class ValidationError extends Data.TaggedError("ValidationError")<{
  message: string
}> {}

class NetworkError extends Data.TaggedError("NetworkError")<{
  statusCode: number
}> {}

// An effect that might fail with multiple error types
declare const program: Effect.Effect<string, ValidationError | NetworkError>

// Handle multiple error types at once
const handled = Effect.catchTags(program, {
  ValidationError: (error) =>
    Effect.succeed(`Validation failed: ${error.message}`),
  NetworkError: (error) => Effect.succeed(`Network error: ${error.statusCode}`)
})
```

**Signature**

```ts
declare const catchTags: { <E, Cases extends { [K in Extract<E, { _tag: string; }>["_tag"]]+?: ((error: Extract<E, { _tag: K; }>) => Effect<any, any, any>); } & (unknown extends E ? {} : { [K in Exclude<keyof Cases, Extract<E, { _tag: string; }>["_tag"]>]: never; })>(cases: Cases): <A, R>(self: Effect<A, E, R>) => Effect<A | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<infer A, any, any> ? A : never; }[keyof Cases], Exclude<E, { _tag: keyof Cases; }> | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<any, infer E, any> ? E : never; }[keyof Cases], R | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<any, any, infer R> ? R : never; }[keyof Cases]>; <R, E, A, Cases extends { [K in Extract<E, { _tag: string; }>["_tag"]]+?: ((error: Extract<E, { _tag: K; }>) => Effect<any, any, any>); } & (unknown extends E ? {} : { [K in Exclude<keyof Cases, Extract<E, { _tag: string; }>["_tag"]>]: never; })>(self: Effect<A, E, R>, cases: Cases): Effect<A | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<infer A, any, any> ? A : never; }[keyof Cases], Exclude<E, { _tag: keyof Cases; }> | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<any, infer E, any> ? E : never; }[keyof Cases], R | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<any, any, infer R> ? R : never; }[keyof Cases]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L2825)

Since v2.0.0