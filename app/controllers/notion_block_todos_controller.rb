class NotionBlockTodosController < ApplicationController
  def update
    @notion_block_todo = NotionBlock::Todo.find(params[:id])
    @notion_block_todo.update!(checked: get_todo_params[:checked] == "1")
  end

  private

  def get_todo_params
    params.require(:notion_block_todo).permit(:checked)
  end
end
