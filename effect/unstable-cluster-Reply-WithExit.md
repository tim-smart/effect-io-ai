Package: `effect`<br />
Module: `Reply`<br />

## Reply.WithExit

Represents a terminal RPC reply for a request, carrying the final `Exit` for the remote
call.

**When to use**

Use to represent the final success, typed failure, defect, or interruption
for a clustered RPC request.

**Signature**

```ts
declare class WithExit<R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Reply.ts#L298)

Since v4.0.0