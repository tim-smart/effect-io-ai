Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.never

A request resolver that never executes requests.

**When to use**

Use as a resolver value for request types that are statically impossible and
should never be issued.

**Gotchas**

If this resolver is used for an actual request, the request waits forever
unless the fiber is interrupted.

**See**

- `make` for constructing a resolver that executes batches and completes request entries

**Signature**

```ts
declare const never: RequestResolver<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L741)

Since v2.0.0