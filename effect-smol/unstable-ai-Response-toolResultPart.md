Package: `effect`<br />
Module: `Response`<br />

## Response.toolResultPart

Constructs a new tool result part.

**Signature**

```ts
declare const toolResultPart: <const Params extends ConstructorParams<ToolResultPart<string, unknown, unknown>>>(params: Params) => Params extends { readonly name: infer Name extends string; readonly isFailure: false; readonly result: infer Success; } ? ToolResultPart<Name, Success, never> : Params extends { readonly name: infer Name extends string; readonly isFailure: true; readonly result: infer Failure; } ? ToolResultPart<Name, never, Failure> : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L1704)

Since v1.0.0