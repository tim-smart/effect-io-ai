Package: `effect`<br />
Module: `Queue`<br />

## Queue.isQueue

Type guard to check if a value is a Queue.

**When to use**

Use to narrow an unknown value to a full `Queue` before passing it to APIs
that need both offering and taking capabilities.

**See**

- `isEnqueue` for checking values that only need write access
- `isDequeue` for checking values that only need read access

**Signature**

```ts
declare const isQueue: <A = unknown, E = unknown>(u: unknown) => u is Queue<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L45)

Since v2.0.0