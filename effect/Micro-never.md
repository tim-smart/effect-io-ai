Package: `effect`<br />
Module: `Micro`<br />

## Micro.never

A `Micro` that will never succeed or fail. It wraps `setInterval` to prevent
the Javascript runtime from exiting.

**Signature**

```ts
declare const never: Micro<never, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1212)

Since v3.4.0