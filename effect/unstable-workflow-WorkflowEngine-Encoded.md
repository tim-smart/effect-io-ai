Package: `effect`<br />
Module: `WorkflowEngine`<br />

## WorkflowEngine.Encoded

Low-level workflow engine contract that works with encoded payloads and
results before `makeUnsafe` adds typed schema decoding and encoding.

**Signature**

```ts
export interface Encoded {
  readonly register: (
    workflow: Workflow.Any,
    execute: (
      payload: object,
      executionId: string
    ) => Effect.Effect<unknown, unknown, WorkflowInstance | WorkflowEngine>
  ) => Effect.Effect<void, never, Scope.Scope>
  readonly execute: <const Discard extends boolean>(
    workflow: Workflow.Any,
    options: {
      readonly executionId: string
      readonly payload: object
      readonly discard: Discard
      readonly parent?: WorkflowInstance["Service"] | undefined
    }
  ) => Effect.Effect<
    Discard extends true ? void : Workflow.Result<unknown, unknown>
  >
  readonly poll: (
    workflow: Workflow.Any,
    executionId: string
  ) => Effect.Effect<Option.Option<Workflow.Result<unknown, unknown>>>
  readonly interrupt: (
    workflow: Workflow.Any,
    executionId: string
  ) => Effect.Effect<void>
  readonly interruptUnsafe: (
    workflow: Workflow.Any,
    executionId: string
  ) => Effect.Effect<void>
  readonly resume: (
    workflow: Workflow.Any,
    executionId: string
  ) => Effect.Effect<void>
  readonly activityExecute: (
    activity: Activity.Any,
    attempt: number
  ) => Effect.Effect<
    Workflow.Result<unknown, unknown>,
    never,
    WorkflowInstance
  >
  readonly deferredResult: (
    deferred: DurableDeferred.Any
  ) => Effect.Effect<
    Option.Option<Exit.Exit<unknown, unknown>>,
    never,
    WorkflowInstance
  >
  readonly deferredDone: (options: {
    readonly workflowName: string
    readonly executionId: string
    readonly deferredName: string
    readonly exit: Exit.Exit<unknown, unknown>
  }) => Effect.Effect<void>
  readonly scheduleClock: (
    workflow: Workflow.Any,
    options: {
      readonly executionId: string
      readonly clock: DurableClock
    }
  ) => Effect.Effect<void>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/WorkflowEngine.ts#L296)

Since v4.0.0