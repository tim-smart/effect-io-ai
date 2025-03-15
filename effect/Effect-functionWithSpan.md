Package: `effect`<br />
Module: `Effect`<br />

## Effect.functionWithSpan

Wraps a function that returns an effect with a new span for tracing.

**Example**

```ts
import { Effect } from "effect"

const getTodo = Effect.functionWithSpan({
  body: (id: number) => Effect.succeed(`Got todo ${id}!`),
  options: (id) => ({
    name: `getTodo-${id}`,
    attributes: { id }
  })
})
```

**Signature**

```ts
declare const functionWithSpan: <Args extends Array<any>, Ret extends Effect<any, any, any>>(options: { readonly body: (...args: Args) => Ret; readonly options: FunctionWithSpanOptions | ((...args: Args) => FunctionWithSpanOptions); readonly captureStackTrace?: boolean | undefined; }) => (...args: Args) => Unify.Unify<Ret>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L13064)

Since v3.2.0