Package: `effect`<br />
Module: `Terminal`<br />

## Terminal.Terminal

A `Terminal` represents a command-line interface which can read input from a
user and display messages to a user.

**Signature**

```ts
export interface Terminal {
  readonly [TypeId]: typeof TypeId

  /**
   * The number of columns available on the platform's terminal interface.
   */
  readonly columns: Effect.Effect<number>
  /**
   * Reads input events from the default standard input.
   */
  readonly readInput: Effect.Effect<Queue.Dequeue<UserInput, Cause.Done>, never, Scope.Scope>
  /**
   * Reads a single line from the default standard input.
   */
  readonly readLine: Effect.Effect<string, QuitError>
  /**
   * Displays text to the default standard output.
   */
  readonly display: (text: string) => Effect.Effect<void, PlatformError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Terminal.ts#L23)

Since v4.0.0