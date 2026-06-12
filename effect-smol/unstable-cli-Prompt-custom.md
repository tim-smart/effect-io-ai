Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.custom

Creates a custom `Prompt` from the specified initial state and handlers.

**Details**

The initial state can either be a pure value or an `Effect`. This is
particularly useful when the initial state of the `Prompt` must be computed
by performing an effectful computation, such as reading data from the file
system. A `Prompt` runs as a render loop: `render` returns ANSI output for
the current frame, the `Terminal` obtains user input, `process` returns the
next prompt action, and `clear` returns ANSI output used to clear the previous
frame.

Optionally, an external `events` dequeue can be provided as the third
argument. When present, the render loop will race user input against events
from the dequeue, allowing background events to trigger re-renders without
waiting for a keypress. When an event is received from the dequeue, the
`receive` handler is called instead of `process`.

**Signature**

```ts
declare const custom: { <State, Output>(initialState: State | Effect.Effect<State, never, Environment>, handlers: Handlers<State, Output>): Prompt<Output>; <State, Output, A>(initialState: State | Effect.Effect<State, never, Environment>, events: Queue.Dequeue<A, never>, handlers: Handlers<State, Output, ProcessInput<A>>): Prompt<Output>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L775)

Since v4.0.0