# functionWithSpan

Wraps a function that returns an effect with a new span for tracing.

To import and use `functionWithSpan` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.functionWithSpan
undefined

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
export declare const functionWithSpan: <Args extends Array<any>, Ret extends Effect<any, any, any>>(options: {
  readonly body: (...args: Args) => Ret
  readonly options: FunctionWithSpanOptions | ((...args: Args) => FunctionWithSpanOptions)
  readonly captureStackTrace?: boolean | undefined
}) => (...args: Args) => Unify.Unify<Ret>
```
