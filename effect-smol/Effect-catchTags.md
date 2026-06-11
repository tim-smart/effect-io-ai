Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchTags

Handles multiple errors in a single block of code using their `_tag` field.

**When to use**

Use when one recovery step should handle several tagged error types by
matching their readonly `_tag` fields.

**Details**

Pass a handler table whose keys are tags, plus an optional fallback for
unmatched errors.

The error type must have a readonly `_tag` field to use `catchTags`. This
field is used to identify and match errors.

**Example** (Handling multiple tagged errors)

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
declare const catchTags: { <E, Cases extends { [K in Extract<E, { _tag: string; }>["_tag"]]+?: ((error: Extract<E, { _tag: K; }>) => Effect<any, any, any>); } & (unknown extends E ? {} : { [K in Exclude<keyof Cases, Extract<E, { _tag: string; }>["_tag"]>]: never; }), A2 = unassigned, E2 = never, R2 = never>(cases: Cases, orElse?: ((e: Exclude<E, { _tag: keyof Cases; }>) => Effect<A2, E2, R2>) | undefined): <A, R>(self: Effect<A, E, R>) => Effect<A | Exclude<A2, unassigned> | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<infer A, any, any> ? A : never; }[keyof Cases], E2 | (A2 extends unassigned ? Exclude<E, { _tag: keyof Cases; }> : never) | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<any, infer E, any> ? E : never; }[keyof Cases], R | R2 | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<any, any, infer R> ? R : never; }[keyof Cases]>; <R, E, A, Cases extends { [K in Extract<E, { _tag: string; }>["_tag"]]+?: ((error: Extract<E, { _tag: K; }>) => Effect<any, any, any>); } & (unknown extends E ? {} : { [K in Exclude<keyof Cases, Extract<E, { _tag: string; }>["_tag"]>]: never; }), A2 = unassigned, E2 = never, R2 = never>(self: Effect<A, E, R>, cases: Cases, orElse?: ((e: Exclude<E, { _tag: keyof Cases; }>) => Effect<A2, E2, R2>) | undefined): Effect<A | Exclude<A2, unassigned> | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<infer A, any, any> ? A : never; }[keyof Cases], E2 | (A2 extends unassigned ? Exclude<E, { _tag: keyof Cases; }> : never) | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<any, infer E, any> ? E : never; }[keyof Cases], R | R2 | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => Effect<any, any, infer R> ? R : never; }[keyof Cases]>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L2749)

Since v2.0.0