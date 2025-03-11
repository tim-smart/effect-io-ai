## once

A schedule that executes only once and then stops.

**Details**

This schedule triggers a single execution and then terminates. It does not
repeat or apply any additional logic.

**Signature**

```ts
declare const once: Schedule<void, unknown, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1425)

Since v2.0.0