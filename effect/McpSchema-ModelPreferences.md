Package: `@effect/ai`<br />
Module: `McpSchema`<br />

## McpSchema.ModelPreferences

The server's preferences for model selection, requested of the client during sampling.

Because LLMs can vary along multiple dimensions, choosing the "best" model is
rarely straightforward.  Different models excel in different areas—some are
faster but less capable, others are more capable but more expensive, and so
on. This interface allows servers to express their priorities across multiple
dimensions to help clients make an appropriate selection for their use case.

These preferences are always advisory. The client MAY ignore them. It is also
up to the client to decide how to interpret these preferences and how to
balance them against other considerations.

**Signature**

```ts
declare class ModelPreferences
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/McpSchema.ts#L1385)

Since v1.0.0