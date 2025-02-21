# annotateSpans

Adds annotations to each span in the effect for enhanced traceability.

**Details**

This function lets you attach key-value annotations to all spans generated
during the execution of an effect. Annotations provide additional context,
such as metadata or labels, which can help you understand and debug
asynchronous workflows more effectively.

You can either pass a single key-value pair or a record of key-value pairs to
annotate the spans. These annotations can then be visualized in tracing tools
that support span annotations.

To import and use `annotateSpans` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.annotateSpans
```

**Signature**

```ts
export declare const annotateSpans: {
  (key: string, value: unknown): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>
  (values: Record<string, unknown>): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>
  <A, E, R>(effect: Effect<A, E, R>, key: string, value: unknown): Effect<A, E, R>
  <A, E, R>(effect: Effect<A, E, R>, values: Record<string, unknown>): Effect<A, E, R>
}
```
