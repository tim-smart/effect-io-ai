Package: `effect`<br />
Module: `Stream`<br />

## Stream.withExecutionPlan

Apply an `ExecutionPlan` to the stream, which allows you to fallback to
different resources in case of failure.

If you have a stream that could fail with partial results, you can use
the `preventFallbackOnPartialStream` option to prevent contamination of
the final stream with partial results.

**Signature**

```ts
declare const withExecutionPlan: { <Input, R2, Provides, PolicyE>(policy: ExecutionPlan<{ provides: Provides; input: Input; error: PolicyE; requirements: R2; }>, options?: { readonly preventFallbackOnPartialStream?: boolean | undefined; }): <A, E extends Input, R>(self: Stream<A, E, R>) => Stream<A, E | PolicyE, R2 | Exclude<R, Provides>>; <A, E extends Input, R, R2, Input, Provides, PolicyE>(self: Stream<A, E, R>, policy: ExecutionPlan<{ provides: Provides; input: Input; error: PolicyE; requirements: R2; }>, options?: { readonly preventFallbackOnPartialStream?: boolean | undefined; }): Stream<A, E | PolicyE, R2 | Exclude<R, Provides>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4095)

Since v3.16.0