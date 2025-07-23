Package: `@effect/platform`<br />
Module: `Terminal`<br />

## Terminal.Terminal

A `Terminal` represents a command-line interface which can read input from a
user and display messages to a user.

**Signature**

```ts
export interface Terminal {
  /**
   * The number of columns available on the platform's terminal interface.
   */
  readonly columns: Effect<number>
  /**
   * Reads input events from the default standard input.
   */
  readonly readInput: Effect<ReadonlyMailbox<UserInput>, never, Scope.Scope>
  /**
   * Reads a single line from the default standard input.
   */
  readonly readLine: Effect<string, QuitException>
  /**
   * Displays text to the the default standard output.
   */
  readonly display: (text: string) => Effect<void, PlatformError>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Terminal.ts#L20)

Since v1.0.0