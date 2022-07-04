<!-- Modal -->
<div wire:ignore.self class="modal fade" id="createDataModal" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="createDataModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="createDataModalLabel">Create New Socio</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true close-btn">×</span>
                </button>
            </div>
           <div class="modal-body">
				<form>
            <div class="form-group">
                <label for="soccedula"></label>
                <input wire:model="soccedula" type="text" class="form-control" id="soccedula" placeholder="Soccedula">@error('soccedula') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="socnombre"></label>
                <input wire:model="socnombre" type="text" class="form-control" id="socnombre" placeholder="Socnombre">@error('socnombre') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="socdireccion"></label>
                <input wire:model="socdireccion" type="text" class="form-control" id="socdireccion" placeholder="Socdireccion">@error('socdireccion') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="soctelefono"></label>
                <input wire:model="soctelefono" type="text" class="form-control" id="soctelefono" placeholder="Soctelefono">@error('soctelefono') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="soccorreo"></label>
                <input wire:model="soccorreo" type="text" class="form-control" id="soccorreo" placeholder="Soccorreo">@error('soccorreo') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
  
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary close-btn" data-dismiss="modal">Close</button>
                <button type="button" wire:click.prevent="store()" class="btn btn-primary close-modal">Save</button>
            </div>
        </div>
    </div>
</div>
